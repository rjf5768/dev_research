; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr30778.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr30778.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_stat = type { i8*, i8*, i8*, i32, i8, i8, i8, i8, i64 }

@reg_stat = internal global %struct.reg_stat* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_reg_last() #0 {
  %1 = load %struct.reg_stat*, %struct.reg_stat** @reg_stat, align 8
  %2 = bitcast %struct.reg_stat* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 31, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.reg_stat, align 8
  store i32 0, i32* %1, align 4
  store %struct.reg_stat* %2, %struct.reg_stat** @reg_stat, align 8
  %3 = getelementptr inbounds %struct.reg_stat, %struct.reg_stat* %2, i32 0, i32 8
  store i64 -1, i64* %3, align 8
  call void @init_reg_last()
  %4 = getelementptr inbounds %struct.reg_stat, %struct.reg_stat* %2, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
