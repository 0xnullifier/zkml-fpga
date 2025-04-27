<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="ntt" ideType="classic" top="ntt_2_24">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../src/omega.hpp" sc="0" tb="false" cflags="-Wextra-tokens" csimflags="" blackbox="false"/>
        <file name="../src/ntt.hpp" sc="0" tb="false" cflags="-Wextra-tokens" csimflags="" blackbox="false"/>
        <file name="../src/ntt.cpp" sc="0" tb="false" cflags="-Wextra-tokens" csimflags="" blackbox="false"/>
        <file name="../../../src/timer.hpp" sc="0" tb="1" cflags="-Wextra-tokens -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../dat/out_fully_random_2_24.txt" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../dat/in_fully_random_2_24.txt" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../src/ntt_tb.cpp" sc="0" tb="1" cflags="-Wextra-tokens -Wextra-tokens -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

