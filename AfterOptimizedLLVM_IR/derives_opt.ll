; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/derives.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/derives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shorts = type { %struct.shorts*, i16 }

@nvars = external dso_local global i32, align 4
@ntokens = external dso_local global i32, align 4
@nrules = external dso_local global i32, align 4
@rlhs = external dso_local global i16*, align 8
@derives = dso_local global i16** null, align 8
@nsyms = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_derives() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.shorts*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.shorts**, align 8
  %6 = alloca %struct.shorts*, align 8
  %7 = load i32, i32* @nvars, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %10)
  %12 = bitcast i8* %11 to %struct.shorts**
  %13 = load i32, i32* @ntokens, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.shorts*, %struct.shorts** %12, i64 %15
  store %struct.shorts** %16, %struct.shorts*** %5, align 8
  %17 = load i32, i32* @nrules, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = trunc i64 %20 to i32
  %22 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %21)
  %23 = bitcast i8* %22 to %struct.shorts*
  store %struct.shorts* %23, %struct.shorts** %6, align 8
  %24 = load %struct.shorts*, %struct.shorts** %6, align 8
  store %struct.shorts* %24, %struct.shorts** %3, align 8
  %25 = load i32, i32* @nrules, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %54, %0
  %27 = load i32, i32* %1, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i16*, i16** @rlhs, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %30, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.shorts*, %struct.shorts** %36, i64 %38
  %40 = load %struct.shorts*, %struct.shorts** %39, align 8
  %41 = load %struct.shorts*, %struct.shorts** %3, align 8
  %42 = getelementptr inbounds %struct.shorts, %struct.shorts* %41, i32 0, i32 0
  store %struct.shorts* %40, %struct.shorts** %42, align 8
  %43 = load i32, i32* %1, align 4
  %44 = trunc i32 %43 to i16
  %45 = load %struct.shorts*, %struct.shorts** %3, align 8
  %46 = getelementptr inbounds %struct.shorts, %struct.shorts* %45, i32 0, i32 1
  store i16 %44, i16* %46, align 8
  %47 = load %struct.shorts*, %struct.shorts** %3, align 8
  %48 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.shorts*, %struct.shorts** %48, i64 %50
  store %struct.shorts* %47, %struct.shorts** %51, align 8
  %52 = load %struct.shorts*, %struct.shorts** %3, align 8
  %53 = getelementptr inbounds %struct.shorts, %struct.shorts* %52, i32 1
  store %struct.shorts* %53, %struct.shorts** %3, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %1, align 4
  br label %26, !llvm.loop !4

57:                                               ; preds = %26
  %58 = load i32, i32* @nvars, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %61)
  %63 = bitcast i8* %62 to i16**
  %64 = load i32, i32* @ntokens, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i16*, i16** %63, i64 %66
  store i16** %67, i16*** @derives, align 8
  %68 = load i32, i32* @nvars, align 4
  %69 = load i32, i32* @nrules, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %73)
  %75 = bitcast i8* %74 to i16*
  store i16* %75, i16** %4, align 8
  %76 = load i32, i32* @ntokens, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %107, %57
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @nsyms, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i16*, i16** %4, align 8
  %83 = load i16**, i16*** @derives, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16*, i16** %83, i64 %85
  store i16* %82, i16** %86, align 8
  %87 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.shorts*, %struct.shorts** %87, i64 %89
  %91 = load %struct.shorts*, %struct.shorts** %90, align 8
  store %struct.shorts* %91, %struct.shorts** %3, align 8
  br label %92

92:                                               ; preds = %95, %81
  %93 = load %struct.shorts*, %struct.shorts** %3, align 8
  %94 = icmp ne %struct.shorts* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.shorts*, %struct.shorts** %3, align 8
  %97 = getelementptr inbounds %struct.shorts, %struct.shorts* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 8
  %99 = load i16*, i16** %4, align 8
  %100 = getelementptr inbounds i16, i16* %99, i32 1
  store i16* %100, i16** %4, align 8
  store i16 %98, i16* %99, align 2
  %101 = load %struct.shorts*, %struct.shorts** %3, align 8
  %102 = getelementptr inbounds %struct.shorts, %struct.shorts* %101, i32 0, i32 0
  %103 = load %struct.shorts*, %struct.shorts** %102, align 8
  store %struct.shorts* %103, %struct.shorts** %3, align 8
  br label %92, !llvm.loop !6

104:                                              ; preds = %92
  %105 = load i16*, i16** %4, align 8
  %106 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %106, i16** %4, align 8
  store i16 -1, i16* %105, align 2
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %77, !llvm.loop !7

110:                                              ; preds = %77
  %111 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %112 = load i32, i32* @ntokens, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.shorts*, %struct.shorts** %111, i64 %113
  %115 = icmp ne %struct.shorts** %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %118 = load i32, i32* @ntokens, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.shorts*, %struct.shorts** %117, i64 %119
  %121 = bitcast %struct.shorts** %120 to i8*
  call void @free(i8* noundef %121) #3
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.shorts*, %struct.shorts** %6, align 8
  %124 = icmp ne %struct.shorts* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.shorts*, %struct.shorts** %6, align 8
  %127 = bitcast %struct.shorts* %126 to i8*
  call void @free(i8* noundef %127) #3
  br label %128

128:                                              ; preds = %125, %122
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_derives() #0 {
  %1 = load i16**, i16*** @derives, align 8
  %2 = load i32, i32* @ntokens, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i16*, i16** %1, i64 %3
  %5 = load i16*, i16** %4, align 8
  %6 = icmp ne i16* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load i16**, i16*** @derives, align 8
  %9 = load i32, i32* @ntokens, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16*, i16** %8, i64 %10
  %12 = load i16*, i16** %11, align 8
  %13 = bitcast i16* %12 to i8*
  call void @free(i8* noundef %13) #3
  br label %14

14:                                               ; preds = %7, %0
  %15 = load i16**, i16*** @derives, align 8
  %16 = load i32, i32* @ntokens, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16*, i16** %15, i64 %17
  %19 = icmp ne i16** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i16**, i16*** @derives, align 8
  %22 = load i32, i32* @ntokens, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16*, i16** %21, i64 %23
  %25 = bitcast i16** %24 to i8*
  call void @free(i8* noundef %25) #3
  br label %26

26:                                               ; preds = %20, %14
  ret void
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
