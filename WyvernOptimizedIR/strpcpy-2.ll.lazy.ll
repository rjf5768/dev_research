; ModuleID = './strpcpy-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpcpy-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf1 = dso_local global [64 x i64] zeroinitializer, align 16
@buf2 = dso_local global i8* getelementptr (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 256), align 8
@.str = private unnamed_addr constant [17 x i8] c"abcdefghijklmnop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ABCDEFG\00ijklmnop\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ABCDx\00G\00ijklmnop\00", align 1
@inside_main = external dso_local global i32, align 4
@buf5 = dso_local global [20 x i64] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"RSTUVWXYZ0123456789\00", align 1
@buf7 = dso_local global [20 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"rstuvwxyz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i64* noundef %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = bitcast i64* %0 to i8*
  %6 = getelementptr i64, i64* %0, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(17) %5, i8* noundef nonnull align 1 dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 17, i1 false) #5
  %.not = icmp eq i64* %6, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 2)
  br i1 %.not, label %7, label %8

7:                                                ; preds = %4
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 17)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %7, %4
  call void @abort() #6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  store i64 20061986658402881, i64* %0, align 1
  %.not2 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not2, label %10, label %11

10:                                               ; preds = %9
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 17)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %10, %9
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = bitcast i64* %0 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to i16*
  store i16 120, i16* %15, align 1
  %.not5 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not5, label %16, label %17

16:                                               ; preds = %12
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 17)
  %.not7 = icmp eq i32 %bcmp6, 0
  br i1 %.not7, label %18, label %17

17:                                               ; preds = %16, %12
  call void @abort() #6
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  ret void

UnifiedUnreachableBlock:                          ; preds = %17, %11, %8
  unreachable
}

declare dso_local i8* @stpcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  store i32 0, i32* @inside_main, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) bitcast ([20 x i64]* @buf5 to i8*), i8* noundef nonnull align 1 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 20, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 20, i1 false)
  %1 = load i8*, i8** @buf2, align 8
  call void @test(i64* noundef getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
