; ModuleID = './assem.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/assem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@START_ADDRESS = dso_local global i32 -1, align 4
@.str = private unnamed_addr constant [8 x i8] c"%pass1%\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"usage: assem file\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".lst\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".obj\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Errors detected. Deleted object file.\0A\00", align 1
@MODULE_NAME = dso_local global [9 x i8] zeroinitializer, align 1
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1
@str = private unnamed_addr constant [38 x i8] c"Errors detected. Deleted object file.\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"usage: assem file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  call void (%struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @INIT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY**, ...)*)(%struct.SYMBOL_TABLE_ENTRY** noundef nonnull %3) #6
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.1, i64 0, i64 0))
  br label %74

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8*, i8** %1, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %14) #6
  br label %73

16:                                               ; preds = %7
  %17 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  call void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...) bitcast (void (...)* @PASS1 to void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef nonnull %10, %struct.SYMBOL_TABLE_ENTRY** noundef nonnull %3, %struct._IO_FILE* noundef %17) #6
  %18 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %10) #6
  %19 = call i32 @fclose(%struct._IO_FILE* noundef %17) #6
  %20 = getelementptr inbounds i8*, i8** %1, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %21) #7
  %23 = add i64 %22, 5
  %24 = and i64 %23, 4294967295
  %25 = call noalias i8* @malloc(i64 noundef %24) #6
  %26 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %25, i8* noundef nonnull dereferenceable(1) %21) #6
  %27 = getelementptr inbounds i8*, i8** %1, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %28) #7
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %41, %16
  %.0 = phi i32 [ %30, %16 ], [ %42, %41 ]
  %32 = icmp sgt i32 %.0, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = sext i32 %.0 to i64
  %35 = getelementptr inbounds i8, i8* %25, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 46
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i1 [ false, %31 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %.0, -1
  br label %31, !llvm.loop !4

43:                                               ; preds = %38
  %44 = icmp slt i32 %.0, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8*, i8** %1, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %47) #7
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %45, %43
  %.1 = phi i32 [ %49, %45 ], [ %.0, %43 ]
  %51 = sext i32 %.1 to i64
  %52 = getelementptr inbounds i8, i8* %25, i64 %51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %52, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 5, i1 false) #6
  %53 = getelementptr inbounds i8*, i8** %1, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %54) #7
  %56 = add i64 %55, 5
  %57 = and i64 %56, 4294967295
  %58 = call noalias i8* @malloc(i64 noundef %57) #6
  %59 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %58, i8* noundef nonnull dereferenceable(1) %54) #6
  %60 = sext i32 %.1 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %61, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 5, i1 false) #6
  %62 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  %63 = call noalias %struct._IO_FILE* @fopen(i8* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %64 = call noalias %struct._IO_FILE* @fopen(i8* noundef %58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  call void (%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (void (...)* @PASS2 to void (%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(%struct._IO_FILE* noundef %62, %struct._IO_FILE* noundef %64, %struct._IO_FILE* noundef %63, %struct.SYMBOL_TABLE_ENTRY** noundef nonnull %3, i32* noundef nonnull %4) #6
  %65 = call i32 @fclose(%struct._IO_FILE* noundef %64) #6
  %66 = call i32 @fclose(%struct._IO_FILE* noundef %63) #6
  %67 = call i32 @fclose(%struct._IO_FILE* noundef %62) #6
  %68 = call i32 @remove(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6
  %69 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %69, 0
  br i1 %.not, label %72, label %70

70:                                               ; preds = %50
  %71 = call i32 @remove(i8* noundef %58) #6
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %50
  br label %73

73:                                               ; preds = %72, %12
  br label %74

74:                                               ; preds = %73, %6
  ret i32 0
}

declare dso_local void @INIT_SYM_TAB(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local void @PASS1(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local void @PASS2(...) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
