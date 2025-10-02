; ModuleID = './20050125-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050125-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, i8*, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @seterr(%struct.parse* nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.parse, %struct.parse* %0, i64 0, i32 2
  store i32 %1, i32* %3, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @bracket_empty(%struct.parse* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.parse, %struct.parse* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.parse, %struct.parse* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ult i8* %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.parse, %struct.parse* %0, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %10, i8** %8, align 8
  %11 = load i8, i8* %9, align 1
  %12 = icmp eq i8 %11, 93
  br i1 %12, label %15, label %13

13:                                               ; preds = %7, %1
  %14 = call i32 @seterr(%struct.parse* noundef %0, i32 noundef 7)
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %16, label %15

15:                                               ; preds = %13, %7
  br label %16

16:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.parse, align 8
  %4 = getelementptr inbounds %struct.parse, %struct.parse* %3, i64 0, i32 1
  store i8* inttoptr (i64 74565 to i8*), i8** %4, align 8
  %5 = getelementptr inbounds %struct.parse, %struct.parse* %3, i64 0, i32 0
  store i8* inttoptr (i64 74565 to i8*), i8** %5, align 8
  %6 = getelementptr inbounds %struct.parse, %struct.parse* %3, i64 0, i32 2
  store i32 0, i32* %6, align 8
  call void @bracket_empty(%struct.parse* noundef nonnull %3)
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %3, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %.not = icmp eq i32 %8, 7
  br i1 %.not, label %10, label %9

9:                                                ; preds = %2
  call void @abort() #4
  unreachable

10:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
