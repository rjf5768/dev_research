; ModuleID = './20001101.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001101.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struc = type { i8, [3 x i8] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local nonnull %struct.struc* @dummy(i32* nocapture noundef writeonly %0, %struct.struc** nocapture noundef writeonly %1) #0 {
  store i32 1, i32* %0, align 4
  store %struct.struc* inttoptr (i64 7 to %struct.struc*), %struct.struc** %1, align 8
  ret %struct.struc* inttoptr (i64 1 to %struct.struc*)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bogus(%struct.struc* nocapture noundef %0, %struct.struc* noundef readnone %1, %struct.struc* nocapture noundef readnone %2) #1 {
  %4 = alloca %struct.struc*, align 8
  %5 = alloca i32, align 4
  %6 = call %struct.struc* @dummy(i32* noundef nonnull %5, %struct.struc** noundef nonnull %4)
  br i1 false, label %7, label %9

7:                                                ; preds = %3
  br i1 undef, label %9, label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %7, %3
  br i1 true, label %10, label %16

10:                                               ; preds = %9
  %11 = load i32, i32* %5, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr %struct.struc, %struct.struc* %0, i64 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = or i8 %14, 1
  store i8 %15, i8* %13, align 4
  br label %16

16:                                               ; preds = %12, %10, %9
  %17 = load %struct.struc*, %struct.struc** %4, align 8
  %.not = icmp eq %struct.struc* %17, %1
  br i1 %.not, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #4
  unreachable

19:                                               ; preds = %16
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca %struct.struc, align 4
  call void @bogus(%struct.struc* noundef nonnull %1, %struct.struc* noundef nonnull inttoptr (i64 7 to %struct.struc*), %struct.struc* noundef null)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
