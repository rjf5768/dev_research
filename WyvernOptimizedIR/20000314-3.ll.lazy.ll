; ModuleID = './20000314-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000314-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg0 = internal global [5 x i8] c"arg0\00", align 1
@arg1 = internal global [5 x i8] c"arg1\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @attr_eq(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @arg0, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @arg1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @attr_eq(i8* noundef %0, i8* noundef %1) #1 {
  call void @attr_rtx(i8* noundef %0, i8* noundef %1)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @attr_rtx(i8* noundef readnone %0, i8* noundef readnone %1) #1 {
  %.not = icmp eq i8* %0, getelementptr inbounds ([5 x i8], [5 x i8]* @arg0, i64 0, i64 0)
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %.not1 = icmp eq i8* %1, getelementptr inbounds ([5 x i8], [5 x i8]* @arg1, i64 0, i64 0)
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  ret void

UnifiedUnreachableBlock:                          ; preds = %5, %3
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i8* @attr_string(i8* noundef readnone returned %0) #3 {
  ret i8* %0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
