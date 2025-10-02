; ModuleID = './string-opt-18.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7(i8* noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  unreachable

3:                                                ; preds = %1
  ret void
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test1(i8* noundef nonnull %2)
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test2(i8* noundef nonnull %3)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test3(i8* noundef nonnull %4)
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test4(i8* noundef nonnull %5)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test5(i8* noundef nonnull %6)
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test6(i8* noundef nonnull %7)
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test7(i8* noundef nonnull %8)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
