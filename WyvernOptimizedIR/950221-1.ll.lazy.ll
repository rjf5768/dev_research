; ModuleID = './950221-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950221-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsefile = type { i64, i8* }

@basepf = dso_local global %struct.parsefile zeroinitializer, align 8
@parsefile = dso_local global %struct.parsefile* @basepf, align 8
@el = dso_local global i32 0, align 4
@filler = dso_local global [12288 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @g1(i32 noundef %0, i32* nocapture noundef readnone %1) #0 {
  ret i8* undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @g2(i64 noundef %0) #1 {
  %.not = icmp eq i64 %0, 3735928559
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #3 {
  %1 = alloca i32, align 4
  %2 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %3 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %2, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @el, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %12, label %8

8:                                                ; preds = %6
  %9 = load i32, i32* @el, align 4
  %10 = call i8* @g1(i32 noundef %9, i32* noundef nonnull %1)
  %11 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) undef, i8* noundef nonnull dereferenceable(1) %10) #6
  br label %18

12:                                               ; preds = %6, %0
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %15 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %14, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @g2(i64 noundef %16)
  br label %18

18:                                               ; preds = %13, %8
  ret i32 undef
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  store i32 0, i32* @el, align 4
  %1 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %2 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %1, i64 0, i32 0
  store i64 3735928559, i64* %2, align 8
  %3 = call i32 @f()
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
