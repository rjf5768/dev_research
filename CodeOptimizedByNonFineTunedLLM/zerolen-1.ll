; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/zerolen-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/zerolen-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iso_directory_record = type { [4 x i8] }
%struct.anon = type { [1 x i8], [0 x i8] }

@entry = dso_local global %union.iso_directory_record zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.iso_directory_record*, align 8
  store i32 0, i32* %1, align 4
  store %union.iso_directory_record* @entry, %union.iso_directory_record** %2, align 8
  %3 = load %union.iso_directory_record*, %union.iso_directory_record** %2, align 8
  call void @set(%union.iso_directory_record* noundef %3)
  %4 = load %union.iso_directory_record*, %union.iso_directory_record** %2, align 8
  %5 = bitcast %union.iso_directory_record* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load %union.iso_directory_record*, %union.iso_directory_record** %2, align 8
  %13 = bitcast %union.iso_directory_record* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = getelementptr inbounds [0 x i8], [0 x i8]* %14, i64 0, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @exit(i32 noundef 0) #2
  unreachable

20:                                               ; preds = %11, %0
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set(%union.iso_directory_record* noundef %0) #0 {
  %2 = alloca %union.iso_directory_record*, align 8
  store %union.iso_directory_record* %0, %union.iso_directory_record** %2, align 8
  %3 = load %union.iso_directory_record*, %union.iso_directory_record** %2, align 8
  %4 = bitcast %union.iso_directory_record* %3 to [4 x i8]*
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 1, i8* %5, align 1
  %6 = load %union.iso_directory_record*, %union.iso_directory_record** %2, align 8
  %7 = bitcast %union.iso_directory_record* %6 to [4 x i8]*
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %8, align 1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
