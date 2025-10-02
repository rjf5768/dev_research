; ModuleID = './20010409-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010409-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.A**, i32 }
%struct.A = type { i32, i32 }

@b = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global [1 x %struct.B] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@a = dso_local global %struct.A* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(%struct.A* nocapture noundef readnone %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %1, i64 4
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = mul nsw i32 %2, 25
  %8 = add nsw i32 %7, %6
  store i32 %8, i32* @c, align 4
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull %struct.A* @bar(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i8* nocapture noundef readnone %3, i32 noundef %4) #1 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i8* noundef %0, i32* noundef readonly %1) #3 {
  %3 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %4 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.A*, %struct.A** %3, i64 %5
  %7 = load %struct.A*, %struct.A** %6, align 8
  call void @foo(%struct.A* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 200)
  %8 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %8, 0
  %9 = select i1 %.not, i32 65536, i32 0
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %11 = trunc i64 %10 to i32
  %12 = call %struct.A* @bar(i8* noundef %0, i32 noundef %9, i32 noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 201)
  %13 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %14 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.A*, %struct.A** %13, i64 %15
  store %struct.A* %12, %struct.A** %16, align 8
  %17 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %18 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.A*, %struct.A** %17, i64 %19
  %21 = load %struct.A*, %struct.A** %20, align 8
  %22 = getelementptr inbounds %struct.A, %struct.A* %21, i64 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %.not1 = icmp eq i32* %1, null
  br i1 %.not1, label %33, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %1, align 4
  %27 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %28 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.A*, %struct.A** %27, i64 %29
  %31 = load %struct.A*, %struct.A** %30, align 8
  %32 = getelementptr inbounds %struct.A, %struct.A* %31, i64 0, i32 1
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %2
  ret void
}

declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  store i32 0, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  store %struct.A** @a, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  call void @test(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* noundef null)
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
