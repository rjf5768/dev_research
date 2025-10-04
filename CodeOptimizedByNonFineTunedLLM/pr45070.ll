; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45070.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45070.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source = type { i32, i32, i32 }
%struct.packed_ushort = type { i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.source, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.packed_ushort, align 1
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.source, %struct.source* %2, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.source, %struct.source* %2, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.source, %struct.source* %2, i32 0, i32 2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %31, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = call i16 @next(%struct.source* noundef %2)
  %13 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  store i16 %12, i16* %13, align 1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  %18 = load i16, i16* %17, align 1
  %19 = zext i16 %18 to i32
  %20 = icmp ne i32 %19, 65535
  br i1 %20, label %29, label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  %26 = load i16, i16* %25, align 1
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %16
  call void @abort() #3
  unreachable

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %8, !llvm.loop !4

34:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i16 @next(%struct.source* noundef %0) #0 {
  %2 = alloca %struct.packed_ushort, align 1
  %3 = alloca %struct.source*, align 8
  %4 = alloca %struct.packed_ushort, align 1
  store %struct.source* %0, %struct.source** %3, align 8
  %5 = load %struct.source*, %struct.source** %3, align 8
  %6 = getelementptr inbounds %struct.source, %struct.source* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.source*, %struct.source** %3, align 8
  %9 = getelementptr inbounds %struct.source, %struct.source* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.source*, %struct.source** %3, align 8
  %14 = getelementptr inbounds %struct.source, %struct.source* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.source*, %struct.source** %3, align 8
  %19 = getelementptr inbounds %struct.source, %struct.source* %18, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = load %struct.source*, %struct.source** %3, align 8
  call void @fetch(%struct.source* noundef %20)
  %21 = load %struct.source*, %struct.source** %3, align 8
  %22 = call i16 @next(%struct.source* noundef %21)
  %23 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i32 0, i32 0
  store i16 %22, i16* %23, align 1
  br label %34

24:                                               ; preds = %12
  %25 = load %struct.source*, %struct.source** %3, align 8
  %26 = getelementptr inbounds %struct.source, %struct.source* %25, i32 0, i32 2
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  store i16 -1, i16* %27, align 1
  %28 = bitcast %struct.packed_ushort* %2 to i8*
  %29 = bitcast %struct.packed_ushort* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 2, i1 false)
  br label %34

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  store i16 0, i16* %31, align 1
  %32 = bitcast %struct.packed_ushort* %2 to i8*
  %33 = bitcast %struct.packed_ushort* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

34:                                               ; preds = %30, %24, %17
  %35 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i32 0, i32 0
  %36 = load i16, i16* %35, align 1
  ret i16 %36
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal void @fetch(%struct.source* noundef %0) #0 {
  %2 = alloca %struct.source*, align 8
  store %struct.source* %0, %struct.source** %2, align 8
  %3 = load %struct.source*, %struct.source** %2, align 8
  %4 = getelementptr inbounds %struct.source, %struct.source* %3, i32 0, i32 1
  store i32 128, i32* %4, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
