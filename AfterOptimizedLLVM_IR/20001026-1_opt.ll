; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001026-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001026-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brfic_args = type { i8*, i8*, %struct.realvaluetype }
%struct.realvaluetype = type { [3 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.brfic_args, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.brfic_args* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 40, i1 false)
  %4 = bitcast %struct.brfic_args* %2 to i8*
  call void @build_real_from_int_cst_1(i8* noundef %4)
  %5 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %2, i32 0, i32 2
  %6 = getelementptr inbounds %struct.realvaluetype, %struct.realvaluetype* %5, i32 0, i32 0
  %7 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #4
  unreachable

11:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @build_real_from_int_cst_1(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.brfic_args*, align 8
  %4 = alloca %struct.realvaluetype, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.brfic_args*
  store %struct.brfic_args* %6, %struct.brfic_args** %3, align 8
  %7 = load %struct.brfic_args*, %struct.brfic_args** %3, align 8
  %8 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %7, i32 0, i32 2
  %9 = load %struct.brfic_args*, %struct.brfic_args** %3, align 8
  %10 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.brfic_args*, %struct.brfic_args** %3, align 8
  %13 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @real_value_from_int_cst(%struct.realvaluetype* sret(%struct.realvaluetype) align 8 %4, i8* noundef %11, i8* noundef %14)
  %15 = bitcast %struct.realvaluetype* %8 to i8*
  %16 = bitcast %struct.realvaluetype* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal void @real_value_from_int_cst(%struct.realvaluetype* noalias sret(%struct.realvaluetype) align 8 %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %1, i8** %4, align 8
  store i8* %2, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %16, %3
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 3
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.realvaluetype, %struct.realvaluetype* %0, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %14
  store i64 -1, i64* %15, align 8
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %7, !llvm.loop !4

19:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
