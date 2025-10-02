; ModuleID = './rawcaudio.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/adpcm/rawcaudio/rawcaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = dso_local global [500 x i8] zeroinitializer, align 16
@state = dso_local global %struct.adpcm_state zeroinitializer, align 2
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = call i64 @read(i32 noundef 0, i8* noundef bitcast ([1000 x i16]* @sbuf to i8*), i64 noundef 2000) #3
  %3 = trunc i64 %2 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #4
  call void @exit(i32 noundef 1) #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %14

9:                                                ; preds = %6
  %10 = sdiv i32 %3, 2
  call void @adpcm_coder(i16* noundef getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i64 0, i64 0), i32 noundef %10, %struct.adpcm_state* noundef nonnull @state) #3
  %11 = sdiv i32 %3, 4
  %12 = sext i32 %11 to i64
  %13 = call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i64 0, i64 0), i64 noundef %12) #3
  br label %1

14:                                               ; preds = %8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i16, i16* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i64 0, i32 0), align 2
  %17 = sext i16 %16 to i32
  %18 = load i8, i8* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i64 0, i32 1), align 2
  %19 = sext i8 %18 to i32
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17, i32 noundef %19) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %5
  unreachable
}

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @adpcm_coder(i16* noundef, i8* noundef, i32 noundef, %struct.adpcm_state* noundef) #1

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
