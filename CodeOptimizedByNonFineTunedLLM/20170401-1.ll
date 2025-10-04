; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20170401-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20170401-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source = type { i32, i32 }
%struct.packed_ushort = type { i16 }

@flag = internal global i32 0, align 4

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
  store i32 0, i32* @flag, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %30, %0
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = call i16 @next(%struct.source* noundef %2)
  %12 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  store i16 %11, i16* %12, align 1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  %17 = load i16, i16* %16, align 1
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %18, 65535
  br i1 %19, label %28, label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  %25 = load i16, i16* %24, align 1
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  call void @abort() #3
  unreachable

29:                                               ; preds = %23, %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %7, !llvm.loop !4

33:                                               ; preds = %7
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
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @flag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  store i32 0, i32* @flag, align 4
  %16 = load %struct.source*, %struct.source** %3, align 8
  call void @fetch(%struct.source* noundef %16)
  %17 = load %struct.source*, %struct.source** %3, align 8
  %18 = call i16 @next(%struct.source* noundef %17)
  %19 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i32 0, i32 0
  store i16 %18, i16* %19, align 1
  br label %28

20:                                               ; preds = %12
  store i32 1, i32* @flag, align 4
  %21 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  store i16 -1, i16* %21, align 1
  %22 = bitcast %struct.packed_ushort* %2 to i8*
  %23 = bitcast %struct.packed_ushort* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %23, i64 2, i1 false)
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %4, i32 0, i32 0
  store i16 0, i16* %25, align 1
  %26 = bitcast %struct.packed_ushort* %2 to i8*
  %27 = bitcast %struct.packed_ushort* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 2, i1 false)
  br label %28

28:                                               ; preds = %24, %20, %15
  %29 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i32 0, i32 0
  %30 = load i16, i16* %29, align 1
  ret i16 %30
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
