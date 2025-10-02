; ModuleID = './string.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strTable = type { %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }
%struct.intlist = type { i32, %struct.intlist* }

@rcsid_string = dso_local global [5 x i8] c"$Id$\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"Begin StrTable\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"End StrTable\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/string.c\00", align 1
@str = private unnamed_addr constant [15 x i8] c"Begin StrTable\00", align 1
@str.1 = private unnamed_addr constant [13 x i8] c"End StrTable\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.strTable* @newStrTable() #0 {
  %1 = call i8* @zalloc(i32 noundef 8) #5
  %2 = bitcast i8* %1 to %struct.strTable*
  ret %struct.strTable* %2
}

declare dso_local i8* @zalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpStrTable(%struct.strTable* nocapture noundef readonly %0) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0))
  %2 = getelementptr inbounds %struct.strTable, %struct.strTable* %0, i64 0, i32 0
  br label %3

3:                                                ; preds = %19, %1
  %.01.in = phi %struct.list** [ %2, %1 ], [ %20, %19 ]
  %.01 = load %struct.list*, %struct.list** %.01.in, align 8
  %.not = icmp eq %struct.list* %.01, null
  br i1 %.not, label %21, label %4

4:                                                ; preds = %3
  %5 = bitcast %struct.list* %.01 to %struct.strTableElement**
  %6 = load %struct.strTableElement*, %struct.strTableElement** %5, align 8
  %7 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %6, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %8) #5
  %10 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %6, i64 0, i32 1
  br label %11

11:                                               ; preds = %16, %4
  %.0.in = phi %struct.intlist** [ %10, %4 ], [ %17, %16 ]
  %.0 = load %struct.intlist*, %struct.intlist** %.0.in, align 8
  %.not3 = icmp eq %struct.intlist* %.0, null
  br i1 %.not3, label %18, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.intlist, %struct.intlist* %.0, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %14) #5
  br label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.intlist, %struct.intlist* %.0, i64 0, i32 1
  br label %11, !llvm.loop !4

18:                                               ; preds = %11
  %putchar = call i32 @putchar(i32 10)
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.list, %struct.list* %.01, i64 0, i32 1
  br label %3, !llvm.loop !6

21:                                               ; preds = %3
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.strTableElement* @addString(%struct.strTable* noundef %0, i8* noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3) #0 {
  %.not = icmp eq %struct.strTable* %0, null
  br i1 %.not, label %5, label %7

5:                                                ; preds = %4
  %6 = call i32 @fatal(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 noundef 47) #5
  br label %7

7:                                                ; preds = %5, %4
  %8 = getelementptr inbounds %struct.strTable, %struct.strTable* %0, i64 0, i32 0
  br label %9

9:                                                ; preds = %25, %7
  %.01.in = phi %struct.list** [ %8, %7 ], [ %26, %25 ]
  %.01 = load %struct.list*, %struct.list** %.01.in, align 8
  %.not2 = icmp eq %struct.list* %.01, null
  br i1 %.not2, label %27, label %10

10:                                               ; preds = %9
  %11 = bitcast %struct.list* %.01 to %struct.strTableElement**
  %12 = load %struct.strTableElement*, %struct.strTableElement** %11, align 8
  %.not3 = icmp eq %struct.strTableElement* %12, null
  br i1 %.not3, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @fatal(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 noundef 51) #5
  br label %15

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %12, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %17) #6
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %12, i64 0, i32 1
  %21 = load %struct.intlist*, %struct.intlist** %20, align 8
  %22 = call %struct.intlist* @newIntList(i32 noundef %2, %struct.intlist* noundef %21) #5
  %23 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %12, i64 0, i32 1
  store %struct.intlist* %22, %struct.intlist** %23, align 8
  br label %42

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.list, %struct.list* %.01, i64 0, i32 1
  br label %9, !llvm.loop !7

27:                                               ; preds = %9
  %28 = call %struct.strTableElement* @newStrTableElement()
  %29 = call %struct.intlist* @newIntList(i32 noundef %2, %struct.intlist* noundef null) #5
  %30 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %28, i64 0, i32 1
  store %struct.intlist* %29, %struct.intlist** %30, align 8
  %31 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  %34 = call i8* @zalloc(i32 noundef %33) #5
  %35 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %28, i64 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %34, i8* noundef nonnull dereferenceable(1) %1) #5
  %37 = bitcast %struct.strTableElement* %28 to i8*
  %38 = getelementptr inbounds %struct.strTable, %struct.strTable* %0, i64 0, i32 0
  %39 = load %struct.list*, %struct.list** %38, align 8
  %40 = call %struct.list* @newList(i8* noundef %37, %struct.list* noundef %39) #5
  %41 = getelementptr inbounds %struct.strTable, %struct.strTable* %0, i64 0, i32 0
  store %struct.list* %40, %struct.list** %41, align 8
  br label %42

42:                                               ; preds = %27, %19
  %storemerge = phi i32 [ 1, %27 ], [ 0, %19 ]
  %.0 = phi %struct.strTableElement* [ %28, %27 ], [ %12, %19 ]
  store i32 %storemerge, i32* %3, align 4
  ret %struct.strTableElement* %.0
}

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local %struct.intlist* @newIntList(i32 noundef, %struct.intlist* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.strTableElement* @newStrTableElement() #0 {
  %1 = call i8* @zalloc(i32 noundef 24) #5
  %2 = bitcast i8* %1 to %struct.strTableElement*
  ret %struct.strTableElement* %2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
