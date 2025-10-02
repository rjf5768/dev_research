; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/rtp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/rtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtpheader = type { %struct.rtpbits, i32, i32, i32 }
%struct.rtpbits = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"socket() failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt SO_REUSEADDR failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"setsockopt IP_MULTICAST_TTL failed.  multicast in kernel?\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"setsockopt IP_MULTICAST_LOOP failed.  multicast in kernel?\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initrtp(%struct.rtpheader* noundef %0) #0 {
  %2 = alloca %struct.rtpheader*, align 8
  store %struct.rtpheader* %0, %struct.rtpheader** %2, align 8
  %3 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %4 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %3, i32 0, i32 0
  %5 = bitcast %struct.rtpbits* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1073741823
  %8 = or i32 %7, -2147483648
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %10 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %9, i32 0, i32 0
  %11 = bitcast %struct.rtpbits* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -536870913
  %14 = or i32 %13, 0
  store i32 %14, i32* %11, align 4
  %15 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %16 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %15, i32 0, i32 0
  %17 = bitcast %struct.rtpbits* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -268435457
  %20 = or i32 %19, 0
  store i32 %20, i32* %17, align 4
  %21 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %22 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %21, i32 0, i32 0
  %23 = bitcast %struct.rtpbits* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -251658241
  %26 = or i32 %25, 0
  store i32 %26, i32* %23, align 4
  %27 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %28 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %27, i32 0, i32 0
  %29 = bitcast %struct.rtpbits* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -8388609
  %32 = or i32 %31, 0
  store i32 %32, i32* %29, align 4
  %33 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %34 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %33, i32 0, i32 0
  %35 = bitcast %struct.rtpbits* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -8323073
  %38 = or i32 %37, 917504
  store i32 %38, i32* %35, align 4
  %39 = call i32 @rand() #6
  %40 = and i32 %39, 65535
  %41 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %42 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %41, i32 0, i32 0
  %43 = bitcast %struct.rtpbits* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %40, 65535
  %46 = and i32 %44, -65536
  %47 = or i32 %46, %45
  store i32 %47, i32* %43, align 4
  %48 = shl i32 %45, 16
  %49 = ashr i32 %48, 16
  %50 = call i32 @rand() #6
  %51 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %52 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = call i32 @rand() #6
  %54 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %55 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rtpheader*, %struct.rtpheader** %2, align 8
  %57 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sendrtp(i32 noundef %0, %struct.sockaddr_in* noundef %1, %struct.rtpheader* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.rtpheader*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store %struct.rtpheader* %2, %struct.rtpheader** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 16
  %17 = alloca i8, i64 %16, align 16
  store i8* %17, i8** %11, align 8
  %18 = load %struct.rtpheader*, %struct.rtpheader** %8, align 8
  %19 = bitcast %struct.rtpheader* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @htonl(i32 noundef %24) #7
  %26 = load i32*, i32** %13, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htonl(i32 noundef %30) #7
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @htonl(i32 noundef %36) #7
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @htonl(i32 noundef %42) #7
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 16
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 %50, i1 false)
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 16
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %57 = bitcast %struct.sockaddr_in* %56 to %struct.sockaddr*
  %58 = call i64 @sendto(i32 noundef %51, i8* noundef %52, i64 noundef %55, i32 noundef 0, %struct.sockaddr* noundef %57, i32 noundef 16)
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @htonl(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @makesocket(i8* noundef %0, i16 noundef zeroext %1, i32 noundef %2, %struct.sockaddr_in* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %8, align 8
  store i32 1, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %18 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #6
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

24:                                               ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @inet_addr(i8* noundef %25) #6
  store i32 %26, i32* %14, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = load i16, i16* %6, align 2
  %31 = call zeroext i16 @htons(i16 noundef zeroext %30) #7
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  store i16 %31, i16* %34, align 2
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = bitcast i32* %10 to i8*
  %41 = call i32 @setsockopt(i32 noundef %39, i32 noundef 1, i32 noundef 2, i8* noundef %40, i32 noundef 4) #6
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

47:                                               ; preds = %24
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @ntohl(i32 noundef %48) #7
  %50 = lshr i32 %49, 28
  %51 = icmp eq i32 %50, 14
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @setsockopt(i32 noundef %53, i32 noundef 0, i32 noundef 33, i8* noundef %12, i32 noundef 1) #6
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

60:                                               ; preds = %52
  store i8 1, i8* %13, align 1
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @setsockopt(i32 noundef %61, i32 noundef 0, i32 noundef 34, i8* noundef %13, i32 noundef 1) #6
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32, i32* %15, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 noundef zeroext) #2

; Function Attrs: nounwind
declare dso_local i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @ntohl(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
