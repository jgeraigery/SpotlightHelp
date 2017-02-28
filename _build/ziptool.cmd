@if (@X)==(@Y) @end /* JScript comment
@setlocal enabledelayedexpansion enableextensions

@for /f "tokens=* delims=" %%v in ('dir /b /s /a:-d  /o:-n "%SystemRoot%\Microsoft.NET\Framework\*jsc.exe"') do @set "jsc=%%v"

@if not exist "%~dp0%~n0.exe" @"%jsc%" /debug+ /fast+ /w:4 /warnaserror+ /nologo /r:System.IO.Compression.FileSystem.dll /out:"%~dp0%~n0.exe" "%~dpf0"

@"%~dp0%~n0.exe" %*

@endlocal & @exit /b %errorlevel%
*/

import System;
import System.Collections.Generic;
import System.IO;
import System.IO.Compression;
import System.IO.Compression.ZipArchive;

function CompressFile(source, destination) {
    ZipFile.CreateFromDirectory(source, destination, CompressionLevel.Optimal, false);
}

function UncompressFile(source, destination) {
    ZipFile.ExtractToDirectory(source, destination);
}

var arguments: String[] = Environment.GetCommandLineArgs();

function printHelp() {
    Console.WriteLine("Compress and uncompress gzip files:");
    Console.WriteLine("Compress:");
    Console.WriteLine(arguments[0] + " -c source destination");
    Console.WriteLine("Uncompress:");
    Console.WriteLine(arguments[0] + " -u source destination");
}

if (arguments.length != 4) {
    Console.WriteLine("Wrong arguments");
    printHelp();
    Environment.Exit(1);
}

switch (arguments[1]) {
    case "-c":
        CompressFile(arguments[2],arguments[3]);
        break;
    case "-u":
        UncompressFile(arguments[2],arguments[3]);
        break;
    default:
        Console.WriteLine("Wrong arguments");
        printHelp();
        Environment.Exit(1);
}
