; ModuleID = './pr23484-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr23484-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chk_calls = external dso_local global i32, align 4
@data = internal global [8 x i8] c"ABCDEFG\00", align 1
@l1 = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ABCDIIII\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ABCDJJJJ\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ABCDKKKK\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"655\00LLLL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca i64, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  store i64 5280832617179597129, i64* %1, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = load i32, i32* @l1, align 4
  %.not = icmp eq i32 %3, 0
  %4 = select i1 %.not, i64 4, i64 8
  %5 = call i8* @__memcpy_chk(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @data, i64 0, i64 0), i64 noundef %4, i64 noundef 8) #6
  %6 = bitcast i64* %1 to i8*
  %.not1 = icmp eq i8* %5, %6
  br i1 %.not1, label %7, label %8

7:                                                ; preds = %0
  %lhsv = load i64, i64* %1, align 8
  %.not2 = icmp eq i64 %lhsv, 5280832617095316033
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %7, %0
  call void @abort() #7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  store i64 5353172790017673802, i64* %1, align 8
  %10 = bitcast i64* %1 to i8*
  %11 = load i32, i32* @l1, align 4
  %.not3 = icmp eq i32 %11, 0
  %12 = select i1 %.not3, i64 4, i64 8
  %13 = call i8* @__mempcpy_chk(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @data, i64 0, i64 0), i64 noundef %12, i64 noundef 8) #6
  %14 = bitcast i64* %1 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  %.not4 = icmp eq i8* %13, %15
  br i1 %.not4, label %16, label %17

16:                                               ; preds = %9
  %lhsv5 = load i64, i64* %1, align 8
  %.not6 = icmp eq i64 %lhsv5, 5353172789916549697
  br i1 %.not6, label %18, label %17

17:                                               ; preds = %16, %9
  call void @abort() #7
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  store i64 5425512962855750475, i64* %1, align 8
  %19 = bitcast i64* %1 to i8*
  %20 = load i32, i32* @l1, align 4
  %.not7 = icmp eq i32 %20, 0
  %21 = select i1 %.not7, i64 4, i64 8
  %22 = call i8* @__memmove_chk(i8* noundef nonnull %19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @data, i64 0, i64 0), i64 noundef %21, i64 noundef 8) #6
  %23 = bitcast i64* %1 to i8*
  %.not8 = icmp eq i8* %22, %23
  br i1 %.not8, label %24, label %25

24:                                               ; preds = %18
  %lhsv9 = load i64, i64* %1, align 8
  %.not10 = icmp eq i64 %lhsv9, 5425512962737783361
  br i1 %.not10, label %26, label %25

25:                                               ; preds = %24, %18
  call void @abort() #7
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  store i64 5497853135693827148, i64* %1, align 8
  %27 = bitcast i64* %1 to i8*
  %28 = load i32, i32* @l1, align 4
  %.not11 = icmp eq i32 %28, 0
  %29 = select i1 %.not11, i64 4, i64 8
  %30 = add nsw i32 %28, 65536
  %31 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %27, i64 noundef %29, i32 noundef 0, i64 noundef 8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %30) #6
  %.not12 = icmp eq i32 %31, 5
  br i1 %.not12, label %32, label %33

32:                                               ; preds = %26
  %lhsv13 = load i64, i64* %1, align 8
  %.not14 = icmp eq i64 %lhsv13, 5497853134417245494
  br i1 %.not14, label %34, label %33

33:                                               ; preds = %32, %26
  call void @abort() #7
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %32
  %35 = load volatile i32, i32* @chk_calls, align 4
  %.not15 = icmp eq i32 %35, 0
  br i1 %.not15, label %37, label %36

36:                                               ; preds = %34
  call void @abort() #7
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %34
  ret void

UnifiedUnreachableBlock:                          ; preds = %36, %33, %25, %17, %8
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: nounwind
declare dso_local i8* @__mempcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #5 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
