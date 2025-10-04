; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/string.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strTable = type { %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.intlist = type { i32, %struct.intlist* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }

@rcsid_string = dso_local global [5 x i8] c"$Id$\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"Begin StrTable\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"End StrTable\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/string.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.strTable* @newStrTable() #0 {
  %1 = call i8* @zalloc(i32 noundef 8)
  %2 = bitcast i8* %1 to %struct.strTable*
  ret %struct.strTable* %2
}

declare dso_local i8* @zalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpStrTable(%struct.strTable* noundef %0) #0 {
  %2 = alloca %struct.strTable*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.intlist*, align 8
  %5 = alloca %struct.strTableElement*, align 8
  %6 = alloca i32, align 4
  store %struct.strTable* %0, %struct.strTable** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.strTable*, %struct.strTable** %2, align 8
  %9 = getelementptr inbounds %struct.strTable, %struct.strTable* %8, i32 0, i32 0
  %10 = load %struct.list*, %struct.list** %9, align 8
  store %struct.list* %10, %struct.list** %3, align 8
  br label %11

11:                                               ; preds = %41, %1
  %12 = load %struct.list*, %struct.list** %3, align 8
  %13 = icmp ne %struct.list* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load %struct.list*, %struct.list** %3, align 8
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.strTableElement*
  store %struct.strTableElement* %18, %struct.strTableElement** %5, align 8
  %19 = load %struct.strTableElement*, %struct.strTableElement** %5, align 8
  %20 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %21)
  %23 = load %struct.strTableElement*, %struct.strTableElement** %5, align 8
  %24 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %23, i32 0, i32 1
  %25 = load %struct.intlist*, %struct.intlist** %24, align 8
  store %struct.intlist* %25, %struct.intlist** %4, align 8
  br label %26

26:                                               ; preds = %35, %14
  %27 = load %struct.intlist*, %struct.intlist** %4, align 8
  %28 = icmp ne %struct.intlist* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.intlist*, %struct.intlist** %4, align 8
  %31 = getelementptr inbounds %struct.intlist, %struct.intlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %33)
  br label %35

35:                                               ; preds = %29
  %36 = load %struct.intlist*, %struct.intlist** %4, align 8
  %37 = getelementptr inbounds %struct.intlist, %struct.intlist* %36, i32 0, i32 1
  %38 = load %struct.intlist*, %struct.intlist** %37, align 8
  store %struct.intlist* %38, %struct.intlist** %4, align 8
  br label %26, !llvm.loop !4

39:                                               ; preds = %26
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39
  %42 = load %struct.list*, %struct.list** %3, align 8
  %43 = getelementptr inbounds %struct.list, %struct.list* %42, i32 0, i32 1
  %44 = load %struct.list*, %struct.list** %43, align 8
  store %struct.list* %44, %struct.list** %3, align 8
  br label %11, !llvm.loop !6

45:                                               ; preds = %11
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.strTableElement* @addString(%struct.strTable* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3) #0 {
  %5 = alloca %struct.strTableElement*, align 8
  %6 = alloca %struct.strTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.list*, align 8
  %11 = alloca %struct.strTableElement*, align 8
  %12 = alloca %struct.strTableElement*, align 8
  store %struct.strTable* %0, %struct.strTable** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.strTable*, %struct.strTable** %6, align 8
  %14 = icmp ne %struct.strTable* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = call i32 @fatal(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 noundef 47)
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.strTable*, %struct.strTable** %6, align 8
  %22 = getelementptr inbounds %struct.strTable, %struct.strTable* %21, i32 0, i32 0
  %23 = load %struct.list*, %struct.list** %22, align 8
  store %struct.list* %23, %struct.list** %10, align 8
  br label %24

24:                                               ; preds = %57, %18
  %25 = load %struct.list*, %struct.list** %10, align 8
  %26 = icmp ne %struct.list* %25, null
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load %struct.list*, %struct.list** %10, align 8
  %29 = getelementptr inbounds %struct.list, %struct.list* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.strTableElement*
  store %struct.strTableElement* %31, %struct.strTableElement** %12, align 8
  %32 = load %struct.strTableElement*, %struct.strTableElement** %12, align 8
  %33 = icmp ne %struct.strTableElement* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = call i32 @fatal(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 noundef 51)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i1 [ true, %27 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.strTableElement*, %struct.strTableElement** %12, align 8
  %42 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* noundef %40, i8* noundef %43) #4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.strTableElement*, %struct.strTableElement** %12, align 8
  %49 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %48, i32 0, i32 1
  %50 = load %struct.intlist*, %struct.intlist** %49, align 8
  %51 = call %struct.intlist* @newIntList(i32 noundef %47, %struct.intlist* noundef %50)
  %52 = load %struct.strTableElement*, %struct.strTableElement** %12, align 8
  %53 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %52, i32 0, i32 1
  store %struct.intlist* %51, %struct.intlist** %53, align 8
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  %55 = load %struct.strTableElement*, %struct.strTableElement** %12, align 8
  store %struct.strTableElement* %55, %struct.strTableElement** %5, align 8
  br label %89

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.list*, %struct.list** %10, align 8
  %59 = getelementptr inbounds %struct.list, %struct.list* %58, i32 0, i32 1
  %60 = load %struct.list*, %struct.list** %59, align 8
  store %struct.list* %60, %struct.list** %10, align 8
  br label %24, !llvm.loop !7

61:                                               ; preds = %24
  %62 = call %struct.strTableElement* @newStrTableElement()
  store %struct.strTableElement* %62, %struct.strTableElement** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.intlist* @newIntList(i32 noundef %63, %struct.intlist* noundef null)
  %65 = load %struct.strTableElement*, %struct.strTableElement** %11, align 8
  %66 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %65, i32 0, i32 1
  store %struct.intlist* %64, %struct.intlist** %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strlen(i8* noundef %67) #4
  %69 = add i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = call i8* @zalloc(i32 noundef %70)
  %72 = load %struct.strTableElement*, %struct.strTableElement** %11, align 8
  %73 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.strTableElement*, %struct.strTableElement** %11, align 8
  %75 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @strcpy(i8* noundef %76, i8* noundef %77) #5
  %79 = load %struct.strTableElement*, %struct.strTableElement** %11, align 8
  %80 = bitcast %struct.strTableElement* %79 to i8*
  %81 = load %struct.strTable*, %struct.strTable** %6, align 8
  %82 = getelementptr inbounds %struct.strTable, %struct.strTable* %81, i32 0, i32 0
  %83 = load %struct.list*, %struct.list** %82, align 8
  %84 = call %struct.list* @newList(i8* noundef %80, %struct.list* noundef %83)
  %85 = load %struct.strTable*, %struct.strTable** %6, align 8
  %86 = getelementptr inbounds %struct.strTable, %struct.strTable* %85, i32 0, i32 0
  store %struct.list* %84, %struct.list** %86, align 8
  %87 = load i32*, i32** %9, align 8
  store i32 1, i32* %87, align 4
  %88 = load %struct.strTableElement*, %struct.strTableElement** %11, align 8
  store %struct.strTableElement* %88, %struct.strTableElement** %5, align 8
  br label %89

89:                                               ; preds = %61, %46
  %90 = load %struct.strTableElement*, %struct.strTableElement** %5, align 8
  ret %struct.strTableElement* %90
}

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local %struct.intlist* @newIntList(i32 noundef, %struct.intlist* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.strTableElement* @newStrTableElement() #0 {
  %1 = call i8* @zalloc(i32 noundef 24)
  %2 = bitcast i8* %1 to %struct.strTableElement*
  ret %struct.strTableElement* %2
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
