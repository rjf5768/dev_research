; ModuleID = './va-arg-23.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.two = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.two* nocapture noundef readnone byval(%struct.two) align 8 %5, i32 noundef %6, ...) #0 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_start(i8* nonnull %9)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 0
  %11 = load i32, i32* %10, align 16
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 3
  %15 = load i8*, i8** %14, align 16
  %16 = sext i32 %11 to i64
  %17 = getelementptr i8, i8* %15, i64 %16
  %18 = add i32 %11, 8
  store i32 %18, i32* %10, align 16
  br label %23

19:                                               ; preds = %7
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr i8, i8* %21, i64 8
  store i8* %22, i8** %20, align 8
  br label %23

23:                                               ; preds = %19, %13
  %.in = phi i8* [ %17, %13 ], [ %21, %19 ]
  %.not = icmp eq i32 %6, 1
  br i1 %.not, label %24, label %27

24:                                               ; preds = %23
  %25 = bitcast i8* %.in to i32*
  %26 = load i32, i32* %25, align 4
  %.not1 = icmp eq i32 %26, 2
  br i1 %.not1, label %28, label %27

27:                                               ; preds = %24, %23
  call void @abort() #4
  unreachable

28:                                               ; preds = %24
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.two, align 8
  %2 = bitcast %struct.two* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void (i32, i32, i32, i32, i32, %struct.two*, i32, ...) @foo(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.two* noundef nonnull byval(%struct.two) align 8 %1, i32 noundef 1, i32 noundef 2)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
