; ModuleID = './2003-07-09-LoadShorts.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-09-LoadShorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ShortsSet_struct = type { i32, i32, i16, i16, i8, i8 }

@.str = private unnamed_addr constant [42 x i8] c"   ui = %u (0x%x)\09\09UL-ui = %lld (0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ui*ui = %u (0x%x)\09  UL/ui = %lld (0x%llx)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"    i = %d (0x%x)\09L-i = %lld (0x%llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" i* i = %d (0x%x)\09L/ i = %lld (0x%llx)\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"us    = %u (0x%x)\09\09UL-us = %lld (0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"us*us = %u (0x%x)\09  UL/us = %lld (0x%llx)\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c" s    = %d (0x%x)\09L-s = %lld (0x%llx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c" s* s = %d (0x%x)\09L/ s = %lld (0x%llx)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ub    = %u (0x%x)\09\09UL-ub = %lld (0x%llx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"ub*ub = %u (0x%x)\09\09UL/ub = %lld (0x%llx)\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" b    = %d (0x%x)\09\09L-b = %lld (0x%llx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c" b* b = %d (0x%x)\09\09\09L/b = %lld (0x%llx)\0A\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @getL() #0 {
  ret i64 -5787213826675591005
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = call i64 @getL()
  %4 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #4
  %5 = bitcast i8* %4 to %struct.ShortsSet_struct*
  %6 = trunc i64 %3 to i32
  %7 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = trunc i64 %3 to i32
  %9 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = trunc i64 %3 to i16
  %11 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 2
  store i16 %10, i16* %11, align 4
  %12 = trunc i64 %3 to i16
  %13 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 3
  store i16 %12, i16* %13, align 2
  %14 = trunc i64 %3 to i8
  %15 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 4
  store i8 %14, i8* %15, align 4
  %16 = trunc i64 %3 to i8
  %17 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 5
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  %21 = sub i64 %3, %20
  %22 = zext i32 %19 to i64
  %23 = sub i64 %3, %22
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 noundef %19, i32 noundef %19, i64 noundef %21, i64 noundef %23) #4
  %25 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul i32 %26, %26
  %28 = mul i32 %26, %26
  %29 = zext i32 %26 to i64
  %30 = udiv i64 %3, %29
  %31 = zext i32 %26 to i64
  %32 = udiv i64 %3, %31
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %27, i32 noundef %28, i64 noundef %30, i64 noundef %32) #4
  %34 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %3, %36
  %38 = sext i32 %35 to i64
  %39 = sub nsw i64 %3, %38
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %35, i32 noundef %35, i64 noundef %37, i64 noundef %39) #4
  %41 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, %42
  %44 = mul nsw i32 %42, %42
  %45 = sext i32 %42 to i64
  %46 = sdiv i64 %3, %45
  %47 = sext i32 %42 to i64
  %48 = sdiv i64 %3, %47
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef %43, i32 noundef %44, i64 noundef %46, i64 noundef %48) #4
  %50 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 2
  %51 = load i16, i16* %50, align 4
  %52 = zext i16 %51 to i32
  %53 = zext i16 %51 to i32
  %54 = zext i16 %51 to i64
  %55 = sub i64 %3, %54
  %56 = zext i16 %51 to i64
  %57 = sub i64 %3, %56
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %52, i32 noundef %53, i64 noundef %55, i64 noundef %57) #4
  %59 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 2
  %60 = load i16, i16* %59, align 4
  %61 = zext i16 %60 to i32
  %62 = zext i16 %60 to i32
  %63 = mul nuw nsw i32 %61, %62
  %64 = zext i16 %60 to i32
  %65 = zext i16 %60 to i32
  %66 = mul nuw nsw i32 %64, %65
  %67 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 2
  %68 = load i16, i16* %67, align 4
  %69 = zext i16 %68 to i64
  %70 = udiv i64 %3, %69
  %71 = zext i16 %68 to i64
  %72 = udiv i64 %3, %71
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 noundef %63, i32 noundef %66, i64 noundef %70, i64 noundef %72) #4
  %74 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 3
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = sext i16 %75 to i32
  %78 = sext i16 %75 to i64
  %79 = sub nsw i64 %3, %78
  %80 = sext i16 %75 to i64
  %81 = sub nsw i64 %3, %80
  %82 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 noundef %76, i32 noundef %77, i64 noundef %79, i64 noundef %81) #4
  %83 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 3
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = sext i16 %84 to i32
  %87 = mul nsw i32 %85, %86
  %88 = sext i16 %84 to i32
  %89 = sext i16 %84 to i32
  %90 = mul nsw i32 %88, %89
  %91 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 3
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i64
  %94 = sdiv i64 %3, %93
  %95 = sext i16 %92 to i64
  %96 = sdiv i64 %3, %95
  %97 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 noundef %87, i32 noundef %90, i64 noundef %94, i64 noundef %96) #4
  %98 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 4
  %99 = load i8, i8* %98, align 4
  %100 = zext i8 %99 to i32
  %101 = zext i8 %99 to i32
  %102 = zext i8 %99 to i64
  %103 = sub i64 %3, %102
  %104 = zext i8 %99 to i64
  %105 = sub i64 %3, %104
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %100, i32 noundef %101, i64 noundef %103, i64 noundef %105) #4
  %107 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 4
  %108 = load i8, i8* %107, align 4
  %109 = zext i8 %108 to i32
  %110 = zext i8 %108 to i32
  %111 = mul nuw nsw i32 %109, %110
  %112 = zext i8 %108 to i32
  %113 = zext i8 %108 to i32
  %114 = mul nuw nsw i32 %112, %113
  %115 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 4
  %116 = load i8, i8* %115, align 4
  %117 = zext i8 %116 to i64
  %118 = udiv i64 %3, %117
  %119 = zext i8 %116 to i64
  %120 = udiv i64 %3, %119
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %111, i32 noundef %114, i64 noundef %118, i64 noundef %120) #4
  %122 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 5
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sext i8 %123 to i32
  %126 = sext i8 %123 to i64
  %127 = sub nsw i64 %3, %126
  %128 = sext i8 %123 to i64
  %129 = sub nsw i64 %3, %128
  %130 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %124, i32 noundef %125, i64 noundef %127, i64 noundef %129) #4
  %131 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 5
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sext i8 %132 to i32
  %135 = mul nsw i32 %133, %134
  %136 = sext i8 %132 to i32
  %137 = sext i8 %132 to i32
  %138 = mul nsw i32 %136, %137
  %139 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i64 0, i32 5
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i64
  %142 = sdiv i64 %3, %141
  %143 = sext i8 %140 to i64
  %144 = sdiv i64 %3, %143
  %145 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %135, i32 noundef %138, i64 noundef %142, i64 noundef %144) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
