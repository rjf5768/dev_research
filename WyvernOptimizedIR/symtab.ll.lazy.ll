; ModuleID = './symtab.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }

@symtab = dso_local global %struct.bucket** null, align 8
@firstsymbol = dso_local global %struct.bucket* null, align 8
@lastsymbol = dso_local global %struct.bucket* null, align 8
@nsyms = external dso_local global i32, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @hash(i8* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.01 = phi i8* [ %0, %1 ], [ %6, %4 ]
  %.0 = phi i32 [ 0, %1 ], [ %10, %4 ]
  %3 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %11, label %4

4:                                                ; preds = %2
  %5 = shl nuw nsw i32 %.0, 1
  %6 = getelementptr inbounds i8, i8* %.01, i64 1
  %7 = load i8, i8* %.01, align 1
  %8 = sext i8 %7 to i32
  %9 = xor i32 %5, %8
  %10 = and i32 %9, 16383
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  %12 = urem i32 %.0, 1009
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @copys(i8* noundef %0) #1 {
  br label %2

2:                                                ; preds = %5, %1
  %.01 = phi i32 [ 1, %1 ], [ %6, %5 ]
  %.0 = phi i8* [ %0, %1 ], [ %7, %5 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.01, 1
  %7 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %2, !llvm.loop !6

8:                                                ; preds = %2
  %9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %.01) #4
  %10 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(1) %0) #4
  ret i8* %9
}

declare dso_local i8* @mallocate(...) #2

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @tabinit() #1 {
  %1 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 8072) #4
  store i8* %1, i8** bitcast (%struct.bucket*** @symtab to i8**), align 8
  store %struct.bucket* null, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* null, %struct.bucket** @lastsymbol, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bucket* @getsym(i8* noundef %0) #1 {
  %2 = call i32 @hash(i8* noundef %0)
  %3 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.bucket*, %struct.bucket** %3, i64 %4
  %6 = load %struct.bucket*, %struct.bucket** %5, align 8
  br label %7

7:                                                ; preds = %21, %1
  %.01 = phi %struct.bucket* [ %6, %1 ], [ %.12, %21 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %21 ]
  %.not = icmp eq %struct.bucket* %.01, null
  br i1 %.not, label %10, label %8

8:                                                ; preds = %7
  %9 = icmp eq i32 %.0, 0
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i1 [ false, %7 ], [ %9, %8 ]
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bucket, %struct.bucket* %.01, i64 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %14) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.bucket, %struct.bucket* %.01, i64 0, i32 0
  %20 = load %struct.bucket*, %struct.bucket** %19, align 8
  br label %21

21:                                               ; preds = %18, %17
  %.12 = phi %struct.bucket* [ %.01, %17 ], [ %20, %18 ]
  %.1 = phi i32 [ 1, %17 ], [ %.0, %18 ]
  br label %7, !llvm.loop !7

22:                                               ; preds = %10
  %23 = icmp eq i32 %.0, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %22
  %25 = load i32, i32* @nsyms, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @nsyms, align 4
  %27 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 48) #4
  %28 = bitcast i8* %27 to %struct.bucket*
  %29 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %30 = sext i32 %2 to i64
  %31 = getelementptr inbounds %struct.bucket*, %struct.bucket** %29, i64 %30
  %32 = load %struct.bucket*, %struct.bucket** %31, align 8
  %33 = bitcast i8* %27 to %struct.bucket**
  store %struct.bucket* %32, %struct.bucket** %33, align 8
  %34 = getelementptr inbounds i8, i8* %27, i64 8
  %35 = bitcast i8* %34 to %struct.bucket**
  store %struct.bucket* null, %struct.bucket** %35, align 8
  %36 = call i8* @copys(i8* noundef %0)
  %37 = getelementptr inbounds i8, i8* %27, i64 16
  %38 = bitcast i8* %37 to i8**
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds i8, i8* %27, i64 40
  store i8 0, i8* %39, align 8
  %40 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  %41 = icmp eq %struct.bucket* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i8* %27, i8** bitcast (%struct.bucket** @firstsymbol to i8**), align 8
  br label %47

43:                                               ; preds = %24
  %44 = load %struct.bucket*, %struct.bucket** @lastsymbol, align 8
  %45 = getelementptr inbounds %struct.bucket, %struct.bucket* %44, i64 0, i32 1
  %46 = bitcast %struct.bucket** %45 to i8**
  store i8* %27, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %42
  store i8* %27, i8** bitcast (%struct.bucket** @lastsymbol to i8**), align 8
  %48 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %49 = sext i32 %2 to i64
  %50 = getelementptr inbounds %struct.bucket*, %struct.bucket** %48, i64 %49
  %51 = bitcast %struct.bucket** %50 to i8**
  store i8* %27, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %22
  %.2 = phi %struct.bucket* [ %28, %47 ], [ %.01, %22 ]
  ret %struct.bucket* %.2
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_symtab() #1 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 1009
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.bucket*, %struct.bucket** %4, i64 %5
  %7 = load %struct.bucket*, %struct.bucket** %6, align 8
  br label %8

8:                                                ; preds = %14, %3
  %.01 = phi %struct.bucket* [ %7, %3 ], [ %11, %14 ]
  %.not = icmp eq %struct.bucket* %.01, null
  br i1 %.not, label %15, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.bucket, %struct.bucket* %.01, i64 0, i32 0
  %11 = load %struct.bucket*, %struct.bucket** %10, align 8
  br i1 true, label %12, label %14

12:                                               ; preds = %9
  %13 = bitcast %struct.bucket* %.01 to i8*
  call void @free(i8* noundef %13) #4
  br label %14

14:                                               ; preds = %12, %9
  br label %8, !llvm.loop !8

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

18:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
