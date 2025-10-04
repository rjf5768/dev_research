; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jerror.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [22 x i8] c"Bogus message code %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Bogus buffer control mode\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid component ID %d in SOS\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"IDCT output block size %d not supported\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Bogus input colorspace\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Bogus JPEG colorspace\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bogus marker length\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Invalid memory pool code %d\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Bogus sampling factors\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Invalid scan script at entry %d\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Bogus virtual array access\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Suspension not allowed here\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Too many color components: %d, max %d\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Unsupported color conversion request\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Bogus DAC index %d\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Bogus DAC value 0x%x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Bogus DHT counts\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Bogus DHT index %d\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Bogus DQT index %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Read from EMS failed\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Write to EMS failed\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Didn't expect more than one scan\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Input file read error\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Output file write error --- out of disk space?\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Fractional sampling not implemented yet\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Huffman code size table overflow\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Missing Huffman code table entry\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Empty input file\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Premature end of input file\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Scan script does not transmit all data\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Not implemented yet\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Backing store not supported\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.74 = private unnamed_addr constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 1
@.str.75 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"JFIF APP0 marker, density %dx%d  %d\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"Unknown JFIF minor revision number %d.%02d\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Skipping marker 0x%02x, length %u\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1
@.str.98 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1
@.str.99 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1
@.str.111 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1
@jpeg_std_message_table = dso_local constant [121 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.119, i32 0, i32 0), i8* null], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef %0) #0 {
  %2 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_error_mgr* %0, %struct.jpeg_error_mgr** %2, align 8
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 0
  store void (%struct.jpeg_common_struct*)* @error_exit, void (%struct.jpeg_common_struct*)** %4, align 8
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 1
  store void (%struct.jpeg_common_struct*, i32)* @emit_message, void (%struct.jpeg_common_struct*, i32)** %6, align 8
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 2
  store void (%struct.jpeg_common_struct*)* @output_message, void (%struct.jpeg_common_struct*)** %8, align 8
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 3
  store void (%struct.jpeg_common_struct*, i8*)* @format_message, void (%struct.jpeg_common_struct*, i8*)** %10, align 8
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 4
  store void (%struct.jpeg_common_struct*)* @reset_error_mgr, void (%struct.jpeg_common_struct*)** %12, align 8
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 7
  store i32 0, i32* %14, align 4
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 0, i32* %18, align 8
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 9
  store i8** getelementptr inbounds ([121 x i8*], [121 x i8*]* @jpeg_std_message_table, i64 0, i64 0), i8*** %20, align 8
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 10
  store i32 119, i32* %22, align 8
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 11
  store i8** null, i8*** %24, align 8
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 12
  store i32 0, i32* %26, align 8
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 13
  store i32 0, i32* %28, align 4
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  ret %struct.jpeg_error_mgr* %29
}

; Function Attrs: noinline nounwind uwtable
define internal void @error_exit(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %3, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 2
  %7 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %6, align 8
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  call void %7(%struct.jpeg_common_struct* noundef %8)
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  call void @jpeg_destroy(%struct.jpeg_common_struct* noundef %9)
  call void @exit(i32 noundef 1) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_message(%struct.jpeg_common_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_common_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  store %struct.jpeg_error_mgr* %8, %struct.jpeg_error_mgr** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %11
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 2
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %23, align 8
  %25 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %3, align 8
  call void %24(%struct.jpeg_common_struct* noundef %25)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %43

31:                                               ; preds = %2
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 2
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %39, align 8
  %41 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %3, align 8
  call void %40(%struct.jpeg_common_struct* noundef %41)
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_message(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  %3 = alloca [200 x i8], align 16
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 3
  %8 = load void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*, i8*)** %7, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %10 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  call void %8(%struct.jpeg_common_struct* noundef %9, i8* noundef %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0), i8* noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @format_message(%struct.jpeg_common_struct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.jpeg_common_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jpeg_error_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %11, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  store %struct.jpeg_error_mgr* %13, %struct.jpeg_error_mgr** %5, align 8
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 9
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  br label %63

33:                                               ; preds = %19, %2
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 11
  %36 = load i8**, i8*** %35, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 11
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %53, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %50, %44, %38, %33
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 6
  %70 = bitcast %union.anon* %69 to [8 x i32]*
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %70, i64 0, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 9
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %66, %63
  store i32 0, i32* %10, align 4
  %78 = load i8*, i8** %7, align 8
  store i8* %78, i8** %8, align 8
  br label %79

79:                                               ; preds = %96, %77
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i8, i8* %80, align 1
  store i8 %82, i8* %9, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i8, i8* %9, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 115
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %89
  br label %97

96:                                               ; preds = %85
  br label %79, !llvm.loop !4

97:                                               ; preds = %95, %79
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** %4, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i32 0, i32 6
  %105 = bitcast %union.anon* %104 to [80 x i8]*
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %105, i64 0, i64 0
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %101, i8* noundef %102, i8* noundef %106) #5
  br label %152

108:                                              ; preds = %97
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 6
  %113 = bitcast %union.anon* %112 to [8 x i32]*
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %113, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 6
  %118 = bitcast %union.anon* %117 to [8 x i32]*
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %118, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 6
  %123 = bitcast %union.anon* %122 to [8 x i32]*
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %123, i64 0, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %127 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %126, i32 0, i32 6
  %128 = bitcast %union.anon* %127 to [8 x i32]*
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %128, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 6
  %133 = bitcast %union.anon* %132 to [8 x i32]*
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %133, i64 0, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 6
  %138 = bitcast %union.anon* %137 to [8 x i32]*
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %138, i64 0, i64 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %142 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 6
  %143 = bitcast %union.anon* %142 to [8 x i32]*
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %143, i64 0, i64 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %147 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 6
  %148 = bitcast %union.anon* %147 to [8 x i32]*
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %148, i64 0, i64 7
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %109, i8* noundef %110, i32 noundef %115, i32 noundef %120, i32 noundef %125, i32 noundef %130, i32 noundef %135, i32 noundef %140, i32 noundef %145, i32 noundef %150) #5
  br label %152

152:                                              ; preds = %108, %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_error_mgr(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %3, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 0, i32* %10, align 8
  ret void
}

declare dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
