import time

q = 21888242871839275222246405745257275088548364400416034343698204186575808495617
a = 1
d = 9706598848417545097372247223557719406784115219466060233080913168975159366771
print(2 * q)
def modinv(x):
    return pow(x, q - 2, q)

def karatsuba_multiply(x, y):
	#print "\nNEW"
	if x < 26 and y < 26:
		return x*y
	sx=str(x)
	sy=str(y)
	m = max(len(sx), len(sy))
	sx='0'*(m-len(sx))+sx
	sy='0'*(m-len(sy))+sy
	m1= int((m+1) // 2)

    
	m2= int(m // 2)
	lox=int(sx[m1:])
	hix=int(sx[:m1])
	loy=int(sy[m1:])
	hiy=int(sy[:m1])
	z0 = karatsuba_multiply(lox,loy)
	z1 = karatsuba_multiply((lox+hix),(loy+hiy))
	z2 = karatsuba_multiply(hix,hiy)
	return (z2*10**(2*m2))+((z1-z2-z0)*10**m2)+(z0)

beta = 254
pre_comp_q_prime = (2 ** (2*beta)) // q

print(pre_comp_q_prime)
print(len(bin(pre_comp_q_prime)[2:]))

def barret_reduction(x):
    x_prime = (x * pre_comp_q_prime) >> (2 * beta)

    r = (x - x_prime * q) 

    if r >= q:
        r -= q

    return r

def test_barret_reduction():
    """
    Test the correctness of the Barrett reduction function.
    """
    print("\n=== Testing Barrett Reduction ===")
    
    # Test cases
    test_cases = [
        (0, 0),  # Edge case: zero
        (q - 1, q - 1),  # Edge case: maximum value below q
        (q, 0),  # Edge case: exactly q
        (q + 1, 1),  # Edge case: just above q
        (2 * q, 0),  # Multiple of q
        (2 * q + 12345, 12345),  # Arbitrary value above q
        (123456789012345678901234567890, 123456789012345678901234567890 % q),  # Large number
    ]
    
    all_correct = True
    
    for x, expected in test_cases:
        result = barret_reduction(x)
        is_correct = result == expected
        all_correct &= is_correct
        
        print(f"Input: {x}")
        print(f"  Expected: {expected}")
        print(f"  Result:   {result}")
        print(f"  Correct:  {'✓' if is_correct else '✗'}")
        print()
    
    print(f"Overall correctness: {'✓' if all_correct else '✗'}")

# Run the test
test_barret_reduction()

def test_karatsuba_multiplication():
    """
    Test the correctness and performance of the Karatsuba multiplication algorithm
    compared to Python's native multiplication.
    """
    print("\n=== Testing Karatsuba Multiplication ===")
    
    # Test cases with increasing sizes
    test_cases = [
        (12345, 67890),  # Small numbers
        (9999999999, 9999999999),  # Medium numbers
        (q // 2, q // 3),  # Large numbers (using curve parameter q)
        (q - 1, q - 2)  # Very large numbers
    ]
    
    all_correct = True
    
    for x, y in test_cases:
        # Time and compute with Karatsuba
        start_time = time.time()
        karatsuba_result = karatsuba_multiply(x, y)
        karatsuba_time = time.time() - start_time
        
        # Time and compute with native multiplication
        start_time = time.time()
        native_result = x * y
        native_time = time.time() - start_time
        
        # Check correctness
        is_correct = karatsuba_result == native_result
        all_correct &= is_correct
        
        # Format numbers for display
        x_str = f"{x}" if len(str(x)) < 20 else f"{str(x)[:10]}...{str(x)[-5:]}"
        y_str = f"{y}" if len(str(y)) < 20 else f"{str(y)[:10]}...{str(y)[-5:]}"
        
        print(f"Multiplying {x_str} × {y_str}")
        print(f"  Karatsuba: {karatsuba_time:.6f} seconds")
        print(f"  Native:    {native_time:.6f} seconds")
        print(f"  Speed ratio: {native_time/karatsuba_time:.2f}x {'faster' if native_time < karatsuba_time else 'slower'} than Karatsuba")
        print(f"  Correct result: {'✓' if is_correct else '✗'}")
        
        if not is_correct:
            print(f"  Karatsuba: {karatsuba_result}")
            print(f"  Native:    {native_result}")
        print()
    
    print(f"Overall correctness: {'✓' if all_correct else '✗'}")
    
    # Test with floats (should use native multiplication)
    x, y = 123.45, 67.89
    start_time = time.time()
    result = karatsuba_multiply(x, y)
    karatsuba_time = time.time() - start_time
    print(f"\nMultiplying floats: {x} × {y}")
    print(f"  Result: {result} {'✓' if result == x * y else '✗'}")
    print(f"  Time: {karatsuba_time:.6f} seconds")





class ExtendedPoint:
    def __init__(self, X, Y, Z, T):
        self.X = X % q
        self.Y = Y % q
        self.Z = Z % q
        self.T = T % q


    @staticmethod
    def from_affine(x, y):
        return ExtendedPoint(x, y, 1, (x * y) % q)

    def to_affine(self):
        z_inv = modinv(self.Z)
        x = self.X * z_inv % q
        y = self.Y * z_inv % q
        return x, y

    def add(self, Q):
        A = (self.X * Q.X) % q
        B = (self.Y * Q.Y) % q
        C = (d * self.T * Q.T) % q
        D = (self.Z * Q.Z) % q
        E = ((self.X + self.Y) * (Q.X + Q.Y) - B - A) % q
        F = (D - C) % q
        G = (D + C) % q
        H = (B - A) % q
        X3 = (E * F) % q
        Y3 = (G * H) % q
        T3 = (E * H) % q
        Z3 = (F * G) % q
        return ExtendedPoint(X3, Y3, Z3, T3)


    def add_acc(self, Q):
        A = (self.X * Q.X) % q
        B = (self.Y * Q.Y) % q
        C = (self.Z * Q.T) % q
        D = (self.T * Q.Z) % q
        E = (D + C) % q
        F = (((self.X - self.Y) * (Q.X + Q.Y)) + B - A ) % q
        G = (B +  A) % q
        H = (D - C) % q
        self.X = (E * F) % q
        self.Y = (G * H) % q
        self.T = (E * H) % q
        self.Z = (F * G) % q


    def double(self):
        # Point doubling: 7M
        A = (self.X ** 2) % q
        B = (self.Y ** 2) % q
        C = (2 * (self.Z ** 2)) % q
        D = A
        E = (((self.X + self.Y) ** 2 % q) - A - B) % q
        G = (D + B) % q
        F = (G - C) % q
        H = (D - B) % q
        X3 = (E * F) % q
        Y3 = (G * H) % q
        T3 = (E * H) % q
        Z3 = (F * G) % q
        return ExtendedPoint(X3, Y3, Z3, T3)

    def __str__(self):
        return f" x = {self.X}\n  y = {self.Y}, \n  z = {self.Z}\n  t = {self.T}\n"
    
    def identity_point():
        return ExtendedPoint(0, 1, 1, 0)
    
        
    def scalar_mul(P, k):
        Q =  ExtendedPoint.identity_point()
        while k > 0:
            if k % 2 == 1:
                Q = Q.add(P)
            P = P.double()
            k //= 2
        return Q

# Sample (invalid) point — replace with a valid point!
x_affine = 0x25AE3F2E18727944D2CC38A962D782E6536CB412C23A11E0B274FC6F63B5BFA4 
y_affine=0x130F7B3CD43BD31379DBAD5E893F77461DDC2AC7DAD111650FC49101DFFF7119 
P = ExtendedPoint.from_affine(x_affine, y_affine)

print("P + P =")
print(P.add(P).to_affine())
print("P + P =")
print(P.double().to_affine())

print(ExtendedPoint.identity_point().add(P).to_affine())
print(P.add(ExtendedPoint.identity_point()).to_affine())
print(ExtendedPoint.identity_point().add(ExtendedPoint.identity_point()))


# Check if point satisfies the curve equation
def is_on_curve(x, y):
    lhs = (a * x**2 + y**2) % q
    rhs = (1 + d * x**2 * y**2) % q
    return lhs == rhs

k=0x058EE2B42B1976C70E8F331371D242C1D83F897C40B80841B5313A41E91667D4
kP = ExtendedPoint.scalar_mul(P, k)
print(f"{k} * P =")
x_compute, y_compute = kP.to_affine()
x_actual = 0x0726E9CD84A6EEDE06F94DDED8933A15897F30D97A7DA3D316BE49452C39A766 
y_actual = 0x174E1C1A06DF488C38418AF1A996788BBB8D890F6136168FB99842A927FFA31F
print(f"  x = {x_compute} (expected: {x_actual}) equal: {x_compute == x_actual}")
print(f"  y = {y_compute} (expected: {y_actual}) equal: {y_compute == y_actual}")

class StallFifo:
    def __init__(self):
        self.size = 0
        self.queue = [] 

    def pop(self):
        if self.size == 0:
            raise Exception("Queue is empty")
        value = self.queue[0]
        self.queue = self.queue[1:]
        return value
    
    def clear_fifo(self):
        sum_of_points = ExtendedPoint.identity_point()
        for points in self.queue:
            sum_of_points = sum_of_points.add(points)
        self.queue = []
        self.size = 0
        return sum_of_points
    
    def push(self, value):
        if self.size == 0:
            raise Exception("Queue is empty")

        self.queue = self.queue.append(value)

FIFO_MAX_SIZE = 512
class Bucket:
    def __init__(self, scalar):
        self.size = 0
        self.points = []
        self.sum = ExtendedPoint.identity_point()
        self.MAX_SIZE = 4000
        self.stall_fifo = StallFifo()

    def add(self, point):
        self.size += 1
        self.sum = self.sum.add(point)

class Window:
    def __init__(self):
        self.buckets = []
        for i in range(2**10):
            self.buckets.append(Bucket(i))

    def add(self, point, scalar):
        self.buckets[scalar].add(point)

    def aggregate(self):
        window_sum = ExtendedPoint.identity_point()
        for i in range(2**10):
            if self.buckets[i].size == 0:
                continue
            window_sum = window_sum.add(ExtendedPoint.scalar_mul(self.buckets[i].sum, i))
        return window_sum
class Window2:
    def __init__(self):
        self.buckets = []
        for i in range(2**10):
            self.buckets.append(Bucket(i))

    def add(self, point, scalar):
        self.buckets[scalar].add(point)

    def aggregate(self):
        window_sum = ExtendedPoint.identity_point()
        for i in range(2**10):
            if self.buckets[i].size == 0:
                continue
            bucket_mult = ExtendedPoint.identity_point()
            for _ in range(i):
                bucket_mult = bucket_mult.add(self.buckets[i].sum)
            window_sum = window_sum.add(bucket_mult)
        return window_sum

def partition_scalar(k, window_width=13) -> list:
    windows = []
    num_windows = 26
    MASK = 0b1111111111
    for _ in range(num_windows):
        windows.append(k & MASK)
        k = k >> 10
    return windows


def pippengers_algorithm(scalars, points):
    windows = [] 
    for i in range(26):
        windows.append(Window())

    start_time = time.time()
    for i in range(len(scalars)):
        partitions = partition_scalar(scalars[i])
        assert len(partitions) == 26 
        for j in range(26):
            windows[j].add(points[i], partitions[j])
    end_time = time.time()
    print(f"Time taken for partitioning and adding to windows: {end_time - start_time} seconds")
    acc_sum = ExtendedPoint.identity_point()

    start_time = time.time()
    for i in range(26):
        aggregated = windows[i].aggregate()
        acc_sum.add_acc(ExtendedPoint.scalar_mul(aggregated, 2**(10 * i)))
    end_time = time.time()
    print(f"Time taken for window sum: {end_time - start_time} seconds")
    return acc_sum


# def pippengers_algorithm_2(scalars, points):
#     windows_sums = [ExtendedPoint.identity_point() for _ in range(26)]
#     buckets = [ExtendedPoint.identity_point() for _ in range(2**10)]
#     bucket_tracker = [-1 for _ in range(2**10)]  # Initialize to -1 to indicate empty buckets
#     conflict_count = 0
    
#     for i in range(len(scalars)):
#         partitions = partition_scalar(scalars[i])
#         assert len(partitions) == 26

#         for j in range(26):
#             bucket_idx = partitions[j] 

#             if bucket_tracker[bucket_idx] != -1 and bucket_tracker[bucket_idx] != j:
#                 prev_window = bucket_tracker[bucket_idx]
#                 conflict_count += 1
#                 windows_sums[prev_window] = windows_sums[prev_window].add(
#                     ExtendedPoint.scalar_mul(buckets[bucket_idx], bucket_idx)
#                 )
#                 buckets[bucket_idx] = ExtendedPoint.identity_point()

#             buckets[bucket_idx] = buckets[bucket_idx].add(points[i])
#             bucket_tracker[bucket_idx] = j

#     for i in range(2**10):
#         if bucket_tracker[i] != -1:
#             window_idx = bucket_tracker[i]
#             windows_sums[window_idx]= windows_sums[window_idx].add(
#                 ExtendedPoint.scalar_mul(buckets[i], i))


#     result = ExtendedPoint.identity_point()

#     for i in range(26):
#         result = result.add(ExtendedPoint.scalar_mul(windows_sums[i], 2**(10 * i)))

#     return result

def read_input_data(filename):
    points = []
    scalars = []
    
    with open(filename, 'r') as f:
        lines = f.readlines()
        num_entries = int(lines[0].strip())  # First line contains the number of entries
        
        for i in range(1, num_entries + 1):
            if i >= len(lines):
                break
                
            values = lines[i].strip().split()
            x_hex = values[0]
            y_hex = values[1]
            scalar_hex = values[2]
            
            # Convert hex to integers
            x = int(x_hex, 16)
            y = int(y_hex, 16)
            scalar = int(scalar_hex, 16)
            
            # Create point and add to lists
            point = ExtendedPoint.from_affine(x, y)
            points.append(point)
            scalars.append(scalar)

    return points, scalars


def native_comp(scalars, points):
    # Native computation of the scalar multiplication
    result = ExtendedPoint.identity_point()
    for i in range(len(scalars)):
        result.add_acc(ExtendedPoint.scalar_mul(points[i], scalars[i]))
    return result


actual_result_x = 0x0464218647F94040AC5C0CFC45C37A1AE7E9AED7E0445C65CE30F4666239D309
actual_result_y = 0x1002243A6B9421BD94D88F4052DA436D5572F65982CD2663BAF9C26FE5BDFA26
 

points, scalars = read_input_data("input.dat")
start_time = time.time()
msm_x, msm_y = pippengers_algorithm(scalars, points).to_affine()

end_time = time.time()
print(f"Time taken for Pippenger's algorithm: {end_time - start_time} seconds")

print(f"x = {msm_x} (expected: {actual_result_x}) equal: {msm_x == actual_result_x}")
print(f"y = {msm_y} (expected: {actual_result_y}) equal: {msm_y == actual_result_y}")
