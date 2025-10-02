; ModuleID = './globalrefs.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/globalrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32, %struct.anon, i32, %struct.test* }
%struct.anon = type { i32, i32 }

@TestArray = dso_local global [10 x %struct.test] zeroinitializer, align 16
@TestArrayPtr = dso_local global %struct.test* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct.test]* @TestArray to i8*), i64 72) to %struct.test*), align 8
@Test1 = dso_local global %struct.test zeroinitializer, align 8
@Aptr = dso_local global i64* bitcast (%struct.test* @Test1 to i64*), align 8
@Yptr = dso_local global i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.test* @Test1 to i8*), i64 8) to i32*), align 8
@NextPtr = dso_local global %struct.test** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.test* @Test1 to i8*), i64 16) to %struct.test**), align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"&TestArray[3] - TestArray = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Xptr - Aptr          = 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"NextPtr - Xptr       = 0x%lx\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printdiff(i8* noundef %0, i8* noundef %1) #0 {
  %3 = ptrtoint i8* %0 to i64
  %4 = ptrtoint i8* %1 to i64
  %5 = sub i64 %3, %4
  %6 = trunc i64 %5 to i32
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %6) #3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  call void @printdiff(i8* noundef bitcast (i32* getelementptr inbounds (%struct.test, %struct.test* @Test1, i64 0, i32 1, i32 1) to i8*), i8* noundef bitcast (%struct.test* @Test1 to i8*))
  call void @printdiff(i8* noundef bitcast (%struct.test** getelementptr inbounds (%struct.test, %struct.test* @Test1, i64 0, i32 3) to i8*), i8* noundef bitcast (i32* getelementptr inbounds (%struct.test, %struct.test* @Test1, i64 0, i32 1, i32 1) to i8*))
  %putchar = call i32 @putchar(i32 10)
  br i1 false, label %3, label %4

3:                                                ; preds = %2
  br label %27

4:                                                ; preds = %2
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef 3) #3
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 noundef 8) #3
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #3
  %8 = load %struct.test*, %struct.test** @TestArrayPtr, align 8
  %9 = ptrtoint %struct.test* %8 to i64
  %10 = sub i64 %9, ptrtoint ([10 x %struct.test]* @TestArray to i64)
  %11 = urem i64 %10, 24
  %.not = icmp eq i64 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %4
  br label %27

13:                                               ; preds = %4
  %14 = load %struct.test**, %struct.test*** @NextPtr, align 8
  %15 = ptrtoint %struct.test** %14 to i64
  %16 = load i32*, i32** @Yptr, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = sub i64 %15, %17
  %19 = ptrtoint i32* %16 to i64
  %20 = load i64*, i64** @Aptr, align 8
  %21 = ptrtoint i64* %20 to i64
  %22 = sub i64 %19, %21
  %23 = udiv i64 %10, 24
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 noundef %23) #3
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 noundef %22) #3
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 noundef %18) #3
  br label %27

27:                                               ; preds = %13, %12, %3
  %.0 = phi i32 [ 1, %3 ], [ 1, %12 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
