; ModuleID = './rtp.ll'
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
define dso_local void @initrtp(%struct.rtpheader* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i64 0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i64 0, i32 0, i32 0
  %5 = and i32 %3, 65535
  %6 = or i32 %5, -2146566144
  store i32 %6, i32* %4, align 4
  %7 = call i32 @rand() #7
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i64 0, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -65536
  %12 = or i32 %11, %8
  store i32 %12, i32* %9, align 4
  %13 = call i32 @rand() #7
  %14 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i64 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = call i32 @rand() #7
  %16 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i64 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.rtpheader, %struct.rtpheader* %0, i64 0, i32 3
  store i32 0, i32* %17, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sendrtp(i32 noundef %0, %struct.sockaddr_in* noundef %1, %struct.rtpheader* nocapture noundef readonly %2, i8* nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = sext i32 %4 to i64
  %7 = add nsw i64 %6, 16
  %8 = alloca i8, i64 %7, align 16
  %9 = getelementptr %struct.rtpheader, %struct.rtpheader* %2, i64 0, i32 0, i32 0
  %10 = bitcast i8* %8 to i32*
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @htonl(i32 noundef %11) #8
  store i32 %12, i32* %10, align 16
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @htonl(i32 noundef %14) #8
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %9, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htonl(i32 noundef %19) #8
  %21 = getelementptr inbounds i8, i8* %8, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds i32, i32* %9, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @htonl(i32 noundef %24) #8
  %26 = getelementptr inbounds i8, i8* %8, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds i8, i8* %8, i64 16
  %29 = sext i32 %4 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 1 %3, i64 %29, i1 false)
  %30 = sext i32 %4 to i64
  %31 = add nsw i64 %30, 16
  %32 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %33 = call i64 @sendto(i32 noundef %0, i8* noundef nonnull %8, i64 noundef %31, i32 noundef 0, %struct.sockaddr* noundef %32, i32 noundef 16) #7
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @htonl(i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @sendto(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @makesocket(i8* noundef %0, i16 noundef zeroext %1, i32 noundef %2, %struct.sockaddr_in* nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 1, i32* %5, align 4
  %8 = trunc i32 %2 to i8
  store i8 %8, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %9 = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %12) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %4
  %15 = call i32 @inet_addr(i8* noundef %0) #7
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 0
  store i16 2, i16* %16, align 4
  %17 = call zeroext i16 @htons(i16 noundef zeroext %1) #8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 1
  store i16 %17, i16* %18, align 2
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2, i32 0
  store i32 %15, i32* %19, align 4
  %20 = bitcast i32* %5 to i8*
  %21 = call i32 @setsockopt(i32 noundef %9, i32 noundef 1, i32 noundef 2, i8* noundef nonnull %20, i32 noundef 4) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %24) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %14
  %27 = call i32 @ntohl(i32 noundef %15) #8
  %.mask = and i32 %27, -268435456
  %28 = icmp eq i32 %.mask, -536870912
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = call i32 @setsockopt(i32 noundef %9, i32 noundef 0, i32 noundef 33, i8* noundef nonnull %6, i32 noundef 1) #7
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %33) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %29
  store i8 1, i8* %7, align 1
  %36 = call i32 @setsockopt(i32 noundef %9, i32 noundef 0, i32 noundef 34, i8* noundef nonnull %7, i32 noundef 1) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %39) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %26
  ret i32 %9

UnifiedUnreachableBlock:                          ; preds = %38, %32, %23, %11
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 noundef zeroext) #2

; Function Attrs: nounwind
declare dso_local i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @ntohl(i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
