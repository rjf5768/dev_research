; ModuleID = './getNonKeyAttribute.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getNonKeyAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getNonKeyAttribute.name = internal global [19 x i8] c"getNonKeyAttribute\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getNonKeyAttribute.c\00", align 1
@__PRETTY_FUNCTION__.getNonKeyAttribute = private unnamed_addr constant [40 x i8] c"Int getNonKeyAttribute(FILE *, Char **)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"strlen( temp ) < MAX_SIZE_OF_NON_KEY_ATTRIBUTE\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getNonKeyAttribute(%struct._IO_FILE* noundef %0, i8** noundef %1) #0 {
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq i8** %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = call i8* @getString(%struct._IO_FILE* noundef nonnull %0) #6
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1) #6
  store i8* null, i8** %1, align 8
  br label %27

12:                                               ; preds = %8
  %13 = call i64 @strlen(i8* noundef nonnull %9) #7
  %14 = icmp ult i64 %13, 1024
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %15
  %18 = call i64 @strlen(i8* noundef nonnull %9) #7
  %19 = add i64 %18, 1
  %20 = call noalias i8* @malloc(i64 noundef %19) #6
  store i8* %20, i8** %1, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #6
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1) #6
  br label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %1, align 8
  %25 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %24, i8* noundef nonnull %9) #6
  br label %26

26:                                               ; preds = %23, %22
  %.0 = phi i64 [ 1, %22 ], [ 0, %23 ]
  br label %27

27:                                               ; preds = %26, %11
  %.1 = phi i64 [ 2, %11 ], [ %.0, %26 ]
  ret i64 %.1

UnifiedUnreachableBlock:                          ; preds = %16, %7, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i8* @getString(%struct._IO_FILE* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
