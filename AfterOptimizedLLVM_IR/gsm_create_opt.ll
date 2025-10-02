; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_create.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gsm_state* @gsm_create() #0 {
  %1 = alloca %struct.gsm_state*, align 8
  %2 = alloca %struct.gsm_state*, align 8
  %3 = call noalias i8* @malloc(i64 noundef 656) #3
  %4 = bitcast i8* %3 to %struct.gsm_state*
  store %struct.gsm_state* %4, %struct.gsm_state** %2, align 8
  %5 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %6 = icmp ne %struct.gsm_state* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  store %struct.gsm_state* %8, %struct.gsm_state** %1, align 8
  br label %15

9:                                                ; preds = %0
  %10 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %11 = bitcast %struct.gsm_state* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 656, i1 false)
  %12 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %13 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %12, i32 0, i32 7
  store i16 40, i16* %13, align 2
  %14 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  store %struct.gsm_state* %14, %struct.gsm_state** %1, align 8
  br label %15

15:                                               ; preds = %9, %7
  %16 = load %struct.gsm_state*, %struct.gsm_state** %1, align 8
  ret %struct.gsm_state* %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
