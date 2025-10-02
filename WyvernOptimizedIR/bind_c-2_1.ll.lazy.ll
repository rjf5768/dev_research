; ModuleID = './bind_c-2_1.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { i8, i8 }

@myVar = external dso_local global %struct.myctype_t, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call %struct.myctype_t* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.myctype_t* nonnull @myVar) #3, !srcloc !4
  %4 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 0
  store i8 1, i8* %4, align 1
  %5 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 1
  store i8 2, i8* %5, align 1
  call void @types_test() #4
  %6 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 0
  %7 = load i8, i8* %6, align 1
  %.not = icmp eq i8 %7, 2
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 1
  %11 = load i8, i8* %10, align 1
  %.not1 = icmp eq i8 %11, 2
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %9
  store i8 3, i8* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i64 0, i32 1), align 1
  call void @types_test() #4
  %14 = load i8, i8* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i64 0, i32 0), align 1
  %.not2 = icmp eq i8 %14, 3
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  %17 = load i8, i8* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i64 0, i32 1), align 1
  %.not3 = icmp eq i8 %17, 3
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %18, %15, %12, %8
  unreachable
}

declare dso_local void @types_test() #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 299}
