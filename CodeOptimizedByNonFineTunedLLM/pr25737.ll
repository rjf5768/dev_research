; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr25737.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr25737.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_block = type { %struct.delay_block* }

@Timer_Queue = internal global %struct.delay_block zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.delay_block* @time_enqueue(%struct.delay_block* noundef %0) #0 {
  %2 = alloca %struct.delay_block*, align 8
  %3 = alloca %struct.delay_block*, align 8
  store %struct.delay_block* %0, %struct.delay_block** %2, align 8
  %4 = load %struct.delay_block*, %struct.delay_block** getelementptr inbounds (%struct.delay_block, %struct.delay_block* @Timer_Queue, i32 0, i32 0), align 8
  store %struct.delay_block* %4, %struct.delay_block** %3, align 8
  %5 = load %struct.delay_block*, %struct.delay_block** %2, align 8
  %6 = getelementptr inbounds %struct.delay_block, %struct.delay_block* %5, i32 0, i32 0
  store %struct.delay_block* null, %struct.delay_block** %6, align 8
  %7 = load %struct.delay_block*, %struct.delay_block** getelementptr inbounds (%struct.delay_block, %struct.delay_block* @Timer_Queue, i32 0, i32 0), align 8
  ret %struct.delay_block* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.delay_block* @Timer_Queue, %struct.delay_block** getelementptr inbounds (%struct.delay_block, %struct.delay_block* @Timer_Queue, i32 0, i32 0), align 8
  %2 = call %struct.delay_block* @time_enqueue(%struct.delay_block* noundef @Timer_Queue)
  %3 = icmp ne %struct.delay_block* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
