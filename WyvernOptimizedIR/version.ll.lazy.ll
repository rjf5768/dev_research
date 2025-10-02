; ModuleID = './version.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [39 x i8] c"LAME version %s (www.sulaco.org/mp3) \0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"GPSYCHO: GPL psycho-acoustic and noise shaping model version %s. \0A\00", align 1
@lpszVersion = internal global [80 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d:%02d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_print_version(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i8* @get_lame_version()
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* noundef %2) #3
  %4 = call i8* @get_psy_version()
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_lame_version() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 3, i32 noundef 70) #3
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_psy_version() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0, i32 noundef 77) #3
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_mp3x_version() #0 {
  %1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef 0, i32 noundef 82) #3
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @lpszVersion, i64 0, i64 0)
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
