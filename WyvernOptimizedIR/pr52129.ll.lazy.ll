; ModuleID = './pr52129.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52129.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { [64 x i8], [64 x i8] }
%struct.S = type { i8*, i32 }

@t = dso_local global %struct.T zeroinitializer, align 1
@__const.main.s = private unnamed_addr constant %struct.S { i8* getelementptr (%struct.T, %struct.T* @t, i32 0, i32 0, i64 69), i32 27 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef readnone %0, i8* %1, i32 %2, i8* noundef readnone %3, i8* noundef readnone %4) #0 {
  %6 = alloca %struct.S, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 1
  store i32 %2, i32* %8, align 8
  %.not = icmp eq i8* %0, getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0, i64 2)
  br i1 %.not, label %9, label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %.not1 = icmp eq i8* %11, getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 5)
  br i1 %.not1, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  %.not2 = icmp eq i32 %14, 27
  br i1 %.not2, label %15, label %17

15:                                               ; preds = %12
  %.not3 = icmp eq i8* %3, getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0, i64 17)
  br i1 %.not3, label %16, label %17

16:                                               ; preds = %15
  %.not4 = icmp eq i8* %4, getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 17)
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %16, %15, %12, %9, %5
  call void @abort() #3
  unreachable

18:                                               ; preds = %16
  ret i32 29
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i8* noundef %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2, i8* %3, i32 %4, i32 noundef %5, %struct.T* noundef %6) #0 {
  %8 = alloca %struct.S, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %8, i64 0, i32 0
  store i8* %3, i8** %9, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %8, i64 0, i32 1
  store i32 %4, i32* %10, align 8
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds %struct.T, %struct.T* %6, i64 0, i32 0, i64 %11
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds %struct.T, %struct.T* %6, i64 0, i32 1, i64 %13
  %15 = getelementptr inbounds %struct.S, %struct.S* %8, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %8, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @foo(i8* noundef %0, i8* %16, i32 %18, i8* noundef %12, i8* noundef nonnull %14)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @bar(i8* noundef getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0, i64 2), i8* noundef null, i8* noundef null, i8* getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 5), i32 27, i32 noundef 17, %struct.T* noundef nonnull @t)
  %.not = icmp eq i32 %1, 29
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
