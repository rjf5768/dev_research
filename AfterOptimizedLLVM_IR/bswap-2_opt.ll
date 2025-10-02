; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bswap-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bswap-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bf_or_uint32 = type { %struct.bitfield }
%struct.bitfield = type { i32 }
%struct.ok = type { i8, i8, i8, i8 }

@__const.main.cin = private unnamed_addr constant [4 x i8] c"\83\85\87\89", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @partial_read_le32(i32 %0) #0 {
  %2 = alloca %union.bf_or_uint32, align 1
  %3 = getelementptr inbounds %union.bf_or_uint32, %union.bf_or_uint32* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %3, i32 0, i32 0
  store i32 %0, i32* %4, align 1
  %5 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %6 = bitcast %struct.bitfield* %5 to i32*
  %7 = load i32, i32* %6, align 1
  %8 = and i32 %7, 127
  %9 = trunc i32 %8 to i8
  %10 = zext i8 %9 to i32
  %11 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %12 = bitcast %struct.bitfield* %11 to i32*
  %13 = load i32, i32* %12, align 1
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 127
  %16 = trunc i32 %15 to i8
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %10, %18
  %20 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %21 = bitcast %struct.bitfield* %20 to i32*
  %22 = load i32, i32* %21, align 1
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 127
  %25 = trunc i32 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 16
  %28 = or i32 %19, %27
  %29 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %30 = bitcast %struct.bitfield* %29 to i32*
  %31 = load i32, i32* %30, align 1
  %32 = lshr i32 %31, 24
  %33 = and i32 %32, 127
  %34 = trunc i32 %33 to i8
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 24
  %37 = or i32 %28, %36
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @partial_read_be32(i32 %0) #0 {
  %2 = alloca %union.bf_or_uint32, align 1
  %3 = getelementptr inbounds %union.bf_or_uint32, %union.bf_or_uint32* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %3, i32 0, i32 0
  store i32 %0, i32* %4, align 1
  %5 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %6 = bitcast %struct.bitfield* %5 to i32*
  %7 = load i32, i32* %6, align 1
  %8 = lshr i32 %7, 24
  %9 = and i32 %8, 127
  %10 = trunc i32 %9 to i8
  %11 = zext i8 %10 to i32
  %12 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %13 = bitcast %struct.bitfield* %12 to i32*
  %14 = load i32, i32* %13, align 1
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 127
  %17 = trunc i32 %16 to i8
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %11, %19
  %21 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %22 = bitcast %struct.bitfield* %21 to i32*
  %23 = load i32, i32* %22, align 1
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 127
  %26 = trunc i32 %25 to i8
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 16
  %29 = or i32 %20, %28
  %30 = bitcast %union.bf_or_uint32* %2 to %struct.bitfield*
  %31 = bitcast %struct.bitfield* %30 to i32*
  %32 = load i32, i32* %31, align 1
  %33 = and i32 %32, 127
  %34 = trunc i32 %33 to i8
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 24
  %37 = or i32 %29, %36
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fake_read_le32(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8*, i8** %4, align 8
  store i8 1, i8* %15, align 1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %27, %30
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = or i32 %31, %34
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fake_read_be32(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8*, i8** %4, align 8
  store i8 1, i8* %15, align 1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %27, %30
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = or i32 %31, %34
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @incorrect_read_le32(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8*, i8** %4, align 8
  store i8 1, i8* %21, align 1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %27, %30
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = or i32 %31, %34
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @incorrect_read_be32(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8*, i8** %4, align 8
  store i8 1, i8* %21, align 1
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %27, %30
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = or i32 %31, %34
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.bf_or_uint32, align 1
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca %struct.ok, align 1
  %6 = alloca %struct.ok, align 1
  store i32 0, i32* %1, align 4
  %7 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.cin, i32 0, i32 0), i64 4, i1 false)
  %8 = bitcast %union.bf_or_uint32* %2 to %struct.ok*
  %9 = getelementptr inbounds %struct.ok, %struct.ok* %5, i32 0, i32 0
  store i8 -125, i8* %9, align 1
  %10 = getelementptr inbounds %struct.ok, %struct.ok* %5, i32 0, i32 1
  store i8 -123, i8* %10, align 1
  %11 = getelementptr inbounds %struct.ok, %struct.ok* %5, i32 0, i32 2
  store i8 -121, i8* %11, align 1
  %12 = getelementptr inbounds %struct.ok, %struct.ok* %5, i32 0, i32 3
  store i8 -119, i8* %12, align 1
  %13 = bitcast %struct.ok* %8 to i8*
  %14 = bitcast %struct.ok* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 4, i1 false)
  %15 = getelementptr inbounds %union.bf_or_uint32, %union.bf_or_uint32* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 1
  %18 = call i32 @partial_read_le32(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -1987607165
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  call void @abort() #3
  unreachable

22:                                               ; preds = %0
  %23 = bitcast %union.bf_or_uint32* %2 to %struct.ok*
  %24 = getelementptr inbounds %struct.ok, %struct.ok* %6, i32 0, i32 0
  store i8 -125, i8* %24, align 1
  %25 = getelementptr inbounds %struct.ok, %struct.ok* %6, i32 0, i32 1
  store i8 -123, i8* %25, align 1
  %26 = getelementptr inbounds %struct.ok, %struct.ok* %6, i32 0, i32 2
  store i8 -121, i8* %26, align 1
  %27 = getelementptr inbounds %struct.ok, %struct.ok* %6, i32 0, i32 3
  store i8 -119, i8* %27, align 1
  %28 = bitcast %struct.ok* %23 to i8*
  %29 = bitcast %struct.ok* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 4, i1 false)
  %30 = getelementptr inbounds %union.bf_or_uint32, %union.bf_or_uint32* %2, i32 0, i32 0
  %31 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 1
  %33 = call i32 @partial_read_be32(i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, -2088401015
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  call void @abort() #3
  unreachable

37:                                               ; preds = %22
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %40 = call i32 @fake_read_le32(i8* noundef %38, i8* noundef %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, -1996388989
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  call void @abort() #3
  unreachable

44:                                               ; preds = %37
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 -121, i8* %45, align 1
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %48 = call i32 @fake_read_be32(i8* noundef %46, i8* noundef %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, -2088435319
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  call void @abort() #3
  unreachable

52:                                               ; preds = %44
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 -121, i8* %53, align 1
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %56 = call i32 @incorrect_read_le32(i8* noundef %54, i8* noundef %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, -1987607165
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  call void @abort() #3
  unreachable

60:                                               ; preds = %52
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 -121, i8* %61, align 1
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %64 = call i32 @incorrect_read_be32(i8* noundef %62, i8* noundef %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, -2088401015
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  call void @abort() #3
  unreachable

68:                                               ; preds = %60
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
