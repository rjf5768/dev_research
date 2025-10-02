; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-10-29-ScalarReplBug.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-10-29-ScalarReplBug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { [80 x i8], i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.data, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.data, %struct.data* %2, i32 0, i32 2
  store i32 0, i32* %3, align 4
  %4 = bitcast %struct.data* %2 to i8*
  call void @iter(i32 (i8*)* noundef @callback, i8* noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @iter(i32 (i8*)* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32 (i8*)*, align 8
  %4 = alloca i8*, align 8
  store i32 (i8*)* %0, i32 (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32 (i8*)*, i32 (i8*)** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 %5(i8* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @callback(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.data*
  store %struct.data* %5, %struct.data** %3, align 8
  %6 = load %struct.data*, %struct.data** %3, align 8
  %7 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %8)
  %10 = load %struct.data*, %struct.data** %3, align 8
  %11 = getelementptr inbounds %struct.data, %struct.data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
