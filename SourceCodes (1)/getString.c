; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getString.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getString.buffer = internal global [1025 x i8] zeroinitializer, align 16
@getString.name = internal global [10 x i8] c"getString\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getString.c\00", align 1
@__PRETTY_FUNCTION__.getString = private unnamed_addr constant [24 x i8] c"Char *getString(FILE *)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"maximum buffer length exceeded\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"error pushing character back onto stream\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @getString(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.getString, i64 0, i64 0)) #4
  unreachable

11:                                               ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @fgetc(%struct._IO_FILE* noundef %12)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %37, %11
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 10
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 13
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = call i16** @__ctype_b_loc() #5
  %26 = load i16*, i16** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %26, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %24, %21, %18, %15
  %36 = phi i1 [ false, %21 ], [ false, %18 ], [ false, %15 ], [ %34, %24 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %39 = call i32 @fgetc(%struct._IO_FILE* noundef %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %4, align 8
  br label %15, !llvm.loop !4

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %117

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %46, 10
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = icmp eq i64 %49, 13
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %4, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %55 = call i32 @ungetc(i32 noundef %53, %struct._IO_FILE* noundef %54)
  store i8* null, i8** %2, align 8
  br label %117

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = trunc i64 %58 to i8
  store i8 %59, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), align 16
  store i64 1, i64* %5, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %61 = call i32 @fgetc(%struct._IO_FILE* noundef %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %87, %57
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = call i16** @__ctype_b_loc() #5
  %68 = load i16*, i16** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %68, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 8192
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %66, %63
  %79 = phi i1 [ false, %63 ], [ %77, %66 ]
  br i1 %79, label %80, label %97

80:                                               ; preds = %78
  %81 = load i64, i64* %5, align 8
  %82 = icmp sge i64 %81, 1024
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  call void @errorMessage(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i64 0, i64 0), i8 noundef signext 1)
  call void @flushErrorMessage()
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %84, 1
  %86 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), i8** %2, align 8
  br label %117

87:                                               ; preds = %80
  %88 = load i64, i64* %4, align 8
  %89 = trunc i64 %88 to i8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %90
  store i8 %89, i8* %91, align 1
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %5, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %95 = call i32 @fgetc(%struct._IO_FILE* noundef %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  br label %63, !llvm.loop !6

97:                                               ; preds = %78
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, -1
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load i64, i64* %4, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %106 = call i32 @ungetc(i32 noundef %104, %struct._IO_FILE* noundef %105)
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %102
  call void @errorMessage(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i64 0, i64 0), i8 noundef signext 1)
  call void @flushErrorMessage()
  store i8* null, i8** %2, align 8
  br label %117

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %97
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), i8** %2, align 8
  br label %117

117:                                              ; preds = %116, %114, %83, %51, %44
  %118 = load i8*, i8** %2, align 8
  ret i8* %118
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local void @flushErrorMessage() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
