; ModuleID = './errorMessage.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/errorMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error Message Too Large for Buffer: flushing\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unconnected: %s\0A\00", align 1
@errorBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"Error Message Buffer full: flushing\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unconnected: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unconnected\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @errorMessage(i8* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %7 = icmp ugt i64 %6, 1023
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %9) #7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #8
  br label %15

13:                                               ; preds = %5
  %14 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %0) #9
  br label %15

15:                                               ; preds = %13, %8
  br label %35

16:                                               ; preds = %2
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #6
  %18 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %19 = add i64 %17, %18
  %20 = icmp ugt i64 %19, 1023
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %22) #7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #8
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  br label %34

26:                                               ; preds = %16
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = call i8* @strcpy(i8* noundef nonnull %27, i8* noundef nonnull dereferenceable(1) %0) #9
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %strlen = call i64 @strlen(i8* nonnull %29)
  %endptr = getelementptr [1024 x i8], [1024 x i8]* %3, i64 0, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %endptr, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 3, i1 false)
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %31 = call i8* @strcat(i8* noundef nonnull %30, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #9
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %33 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), i8* noundef nonnull %32) #9
  br label %34

34:                                               ; preds = %26, %21
  br label %35

35:                                               ; preds = %34, %15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushErrorMessage() #0 {
  %strlenfirst = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), align 16
  %.not = icmp eq i8 %strlenfirst, 0
  br i1 %.not, label %6, label %1

1:                                                ; preds = %0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 @fflush(%struct._IO_FILE* noundef %4) #9
  br label %6

6:                                                ; preds = %1, %0
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
