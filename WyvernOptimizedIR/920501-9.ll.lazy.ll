; ModuleID = './920501-9.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%lx%08.lx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"aabbccdd12345678\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ffffffffffffffff\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"aabbccdd\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @proc1() #0 {
  ret i64 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @proc2() #0 {
  ret i64 305419896
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @proc3() #0 {
  ret i64 -6144092016751651208
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @proc4() #0 {
  ret i64 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @proc5() #0 {
  ret i64 2864434397
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_longlong(i64 noundef %0, i8* noundef %1) #1 {
  %.not = icmp ult i64 %0, 4294967296
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = lshr i64 %0, 32
  %5 = and i64 %0, 4294967295
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 noundef %4, i64 noundef %5) #7
  br label %10

7:                                                ; preds = %2
  %8 = and i64 %0, 4294967295
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef %8) #7
  br label %10

10:                                               ; preds = %7, %3
  ret i32 undef
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [100 x i8], align 16
  %2 = call i64 @proc1()
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %4 = call i32 @print_longlong(i64 noundef %2, i8* noundef nonnull %3)
  %5 = bitcast [100 x i8]* %1 to i16*
  %rhsv = load i16, i16* %5, align 16
  %.not = icmp eq i16 %rhsv, 49
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  %8 = call i64 @proc2()
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %10 = call i32 @print_longlong(i64 noundef %8, i8* noundef nonnull %9)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) %11, i64 9)
  %.not2 = icmp eq i32 %bcmp, 0
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %7
  call void @abort() #8
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %7
  %14 = call i64 @proc3()
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %16 = call i32 @print_longlong(i64 noundef %14, i8* noundef nonnull %15)
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull dereferenceable(17) %17, i64 17)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %19, label %18

18:                                               ; preds = %13
  call void @abort() #8
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %13
  %20 = call i64 @proc4()
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %22 = call i32 @print_longlong(i64 noundef %20, i8* noundef nonnull %21)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull dereferenceable(17) %23, i64 17)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %25, label %24

24:                                               ; preds = %19
  call void @abort() #8
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %19
  %26 = call i64 @proc5()
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %28 = call i32 @print_longlong(i64 noundef %26, i8* noundef nonnull %27)
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) %29, i64 9)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %31, label %30

30:                                               ; preds = %25
  call void @abort() #8
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %25
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %31, %30, %24, %18, %12, %6
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
