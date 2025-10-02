; ModuleID = './struct-cpy-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/struct-cpy-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { [38 x i8], %struct.termios, [4 x i8] }
%struct.termios = type { i32, i32, i32, i32, [28 x i8] }

@pty = internal global %struct.tty_driver zeroinitializer, align 8
@zero_t = internal global %struct.termios zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @ini() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) bitcast (%struct.termios* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1) to i8*), i8* noundef nonnull align 4 dereferenceable(44) bitcast (%struct.termios* @zero_t to i8*), i64 44, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 0), align 8
  store i32 2, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 2), align 8
  store i32 4, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 3), align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @ini()
  %1 = load i32, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 0), align 8
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %2, label %8

2:                                                ; preds = %0
  %3 = load i32, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 1), align 4
  %.not1 = icmp eq i32 %3, 2
  br i1 %.not1, label %4, label %8

4:                                                ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 2), align 8
  %.not2 = icmp eq i32 %5, 3
  br i1 %.not2, label %6, label %8

6:                                                ; preds = %4
  %7 = load i32, i32* getelementptr inbounds (%struct.tty_driver, %struct.tty_driver* @pty, i64 0, i32 1, i32 3), align 4
  %.not3 = icmp eq i32 %7, 4
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6, %4, %2, %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %6
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
