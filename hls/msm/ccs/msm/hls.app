<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="msm" ideType="classic" top="msm">
    <files>
        <file name="../src/msm.hpp" sc="0" tb="false" cflags="-DALLOW_EMPTY_HLS_STREAM_READS" csimflags="" blackbox="false"/>
        <file name="../src/msm.cpp" sc="0" tb="false" cflags="-DALLOW_EMPTY_HLS_STREAM_READS" csimflags="" blackbox="false"/>
        <file name="../../../src/tb_msm.cpp" sc="0" tb="1" cflags="-DALLOW_EMPTY_HLS_STREAM_READS -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../dat/input.dat" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../../dat/out.gold.dat" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

