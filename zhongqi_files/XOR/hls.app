<project xmlns="com.autoesl.autopilot.project" name="XOR" top="accelerator" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="accelerator.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="act_pe.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="array.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="bias_pe.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="error_pe.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="weight_pe.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../main.cpp" sc="0" tb="1" cflags="-DHWCOSIM -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

