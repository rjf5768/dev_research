; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getNonKeyAttribute.c'
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
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #5
  unreachable

11:                                               ; preds = %9
  %12 = load i8**, i8*** %4, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #5
  unreachable

16:                                               ; preds = %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i8* @getString(%struct._IO_FILE* noundef %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1)
  %22 = load i8**, i8*** %4, align 8
  store i8* null, i8** %22, align 8
  store i64 2, i64* %6, align 8
  br label %45

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strlen(i8* noundef %24) #6
  %26 = icmp ult i64 %25, 1024
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #5
  unreachable

29:                                               ; preds = %27
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* noundef %30) #6
  %32 = add i64 %31, 1
  %33 = call noalias i8* @malloc(i64 noundef %32) #7
  %34 = load i8**, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %6, align 8
  br label %44

39:                                               ; preds = %29
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strcpy(i8* noundef %41, i8* noundef %42) #7
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %39, %38
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i8* @getString(%struct._IO_FILE* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
