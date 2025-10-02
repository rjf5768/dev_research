; ModuleID = './2003-10-29-ScalarReplBug.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-10-29-ScalarReplBug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { [80 x i8], i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.data, align 4
  %2 = getelementptr inbounds %struct.data, %struct.data* %1, i64 0, i32 2
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.data, %struct.data* %1, i64 0, i32 0, i64 0
  call void @iter(i32 (i8*)* noundef nonnull @callback, i8* noundef nonnull %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @iter(i32 (i8*)* nocapture noundef readonly %0, i8* noundef %1) #0 {
  %3 = call i32 %0(i8* noundef %1) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @callback(i8* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 84
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %4) #2
  %6 = getelementptr inbounds i8, i8* %0, i64 84
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
