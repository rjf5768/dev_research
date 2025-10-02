; ModuleID = './2003-05-26-Shorts.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-26-Shorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"uiprod = %u (0x%x)\09  uidiv = %u (0x%x)\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"usprod = %u (0x%x)\09  usdiv = %u (0x%x)\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"ubprod = %u (0x%x)\09  ubdiv = %u (0x%x)\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c" iprod = %u (0x%x)\09   idiv = %u (0x%x)\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c" sprod = %u (0x%x)\09   sdiv = %u (0x%x)\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c" bprod = %u (0x%x)\09   bdiv = %u (0x%x)\0A\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @getL() #0 {
  ret i64 -5787213826675591005
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = call i64 @getL()
  %4 = trunc i64 %3 to i32
  %5 = trunc i64 %3 to i32
  %6 = trunc i64 %3 to i16
  %7 = trunc i64 %3 to i8
  %8 = and i64 %3, -4294967296
  %9 = and i64 %3, -4294967296
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %4, i64 noundef %8, i64 noundef %9) #4
  %11 = mul i32 %4, %4
  %12 = mul i32 %4, %4
  %13 = and i64 %3, 4294967295
  %14 = udiv i64 %3, %13
  %15 = and i64 %3, 4294967295
  %16 = udiv i64 %3, %15
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11, i32 noundef %12, i64 noundef %14, i64 noundef %16) #4
  %sext = shl i64 %3, 32
  %18 = ashr exact i64 %sext, 32
  %19 = sub nsw i64 %3, %18
  %sext1 = shl i64 %3, 32
  %20 = ashr exact i64 %sext1, 32
  %21 = sub nsw i64 %3, %20
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %5, i32 noundef %5, i64 noundef %19, i64 noundef %21) #4
  %23 = mul nsw i32 %5, %5
  %24 = mul nsw i32 %5, %5
  %sext2 = shl i64 %3, 32
  %25 = ashr exact i64 %sext2, 32
  %26 = sdiv i64 %3, %25
  %sext3 = shl i64 %3, 32
  %27 = ashr exact i64 %sext3, 32
  %28 = sdiv i64 %3, %27
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef %23, i32 noundef %24, i64 noundef %26, i64 noundef %28) #4
  %30 = trunc i64 %3 to i32
  %31 = and i32 %30, 65535
  %32 = trunc i64 %3 to i32
  %33 = and i32 %32, 65535
  %34 = and i64 %3, -65536
  %35 = and i64 %3, -65536
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %31, i32 noundef %33, i64 noundef %34, i64 noundef %35) #4
  %37 = trunc i64 %3 to i32
  %38 = and i32 %37, 65535
  %39 = trunc i64 %3 to i32
  %40 = and i32 %39, 65535
  %41 = mul nuw nsw i32 %38, %40
  %42 = trunc i64 %3 to i32
  %43 = and i32 %42, 65535
  %44 = trunc i64 %3 to i32
  %45 = and i32 %44, 65535
  %46 = mul nuw nsw i32 %43, %45
  %47 = and i64 %3, 65535
  %48 = udiv i64 %3, %47
  %49 = and i64 %3, 65535
  %50 = udiv i64 %3, %49
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 noundef %41, i32 noundef %46, i64 noundef %48, i64 noundef %50) #4
  %52 = sext i16 %6 to i32
  %53 = sext i16 %6 to i32
  %sext4 = shl i64 %3, 48
  %54 = ashr exact i64 %sext4, 48
  %55 = sub nsw i64 %3, %54
  %sext5 = shl i64 %3, 48
  %56 = ashr exact i64 %sext5, 48
  %57 = sub nsw i64 %3, %56
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 noundef %52, i32 noundef %53, i64 noundef %55, i64 noundef %57) #4
  %59 = sext i16 %6 to i32
  %60 = sext i16 %6 to i32
  %61 = mul nsw i32 %59, %60
  %62 = sext i16 %6 to i32
  %63 = sext i16 %6 to i32
  %64 = mul nsw i32 %62, %63
  %sext6 = shl i64 %3, 48
  %65 = ashr exact i64 %sext6, 48
  %66 = sdiv i64 %3, %65
  %sext7 = shl i64 %3, 48
  %67 = ashr exact i64 %sext7, 48
  %68 = sdiv i64 %3, %67
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 noundef %61, i32 noundef %64, i64 noundef %66, i64 noundef %68) #4
  %70 = trunc i64 %3 to i32
  %71 = and i32 %70, 255
  %72 = trunc i64 %3 to i32
  %73 = and i32 %72, 255
  %74 = and i64 %3, -256
  %75 = and i64 %3, -256
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %71, i32 noundef %73, i64 noundef %74, i64 noundef %75) #4
  %77 = trunc i64 %3 to i32
  %78 = and i32 %77, 255
  %79 = trunc i64 %3 to i32
  %80 = and i32 %79, 255
  %81 = mul nuw nsw i32 %78, %80
  %82 = trunc i64 %3 to i32
  %83 = and i32 %82, 255
  %84 = trunc i64 %3 to i32
  %85 = and i32 %84, 255
  %86 = mul nuw nsw i32 %83, %85
  %87 = and i64 %3, 255
  %88 = udiv i64 %3, %87
  %89 = and i64 %3, 255
  %90 = udiv i64 %3, %89
  %91 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %81, i32 noundef %86, i64 noundef %88, i64 noundef %90) #4
  %92 = sext i8 %7 to i32
  %93 = sext i8 %7 to i32
  %sext8 = shl i64 %3, 56
  %94 = ashr exact i64 %sext8, 56
  %95 = sub nsw i64 %3, %94
  %sext9 = shl i64 %3, 56
  %96 = ashr exact i64 %sext9, 56
  %97 = sub nsw i64 %3, %96
  %98 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %92, i32 noundef %93, i64 noundef %95, i64 noundef %97) #4
  %99 = sext i8 %7 to i32
  %100 = sext i8 %7 to i32
  %101 = mul nsw i32 %99, %100
  %102 = sext i8 %7 to i32
  %103 = sext i8 %7 to i32
  %104 = mul nsw i32 %102, %103
  %sext10 = shl i64 %3, 56
  %105 = ashr exact i64 %sext10, 56
  %106 = sdiv i64 %3, %105
  %sext11 = shl i64 %3, 56
  %107 = ashr exact i64 %sext11, 56
  %108 = sdiv i64 %3, %107
  %109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %101, i32 noundef %104, i64 noundef %106, i64 noundef %108) #4
  %110 = add i32 %4, 1
  %111 = add i32 %4, 1
  %112 = mul i32 %110, %111
  %.neg = mul i32 %4, -4
  %113 = add i32 %.neg, %112
  %114 = add i32 %113, -1
  %115 = trunc i64 %3 to i16
  %116 = add i16 %115, 1
  %117 = trunc i64 %3 to i16
  %118 = add i16 %117, 1
  %119 = mul i16 %116, %118
  %120 = trunc i64 %3 to i16
  %121 = shl i16 %120, 2
  %122 = xor i16 %121, -1
  %123 = add i16 %119, %122
  %124 = trunc i64 %3 to i8
  %125 = add i8 %124, 1
  %126 = trunc i64 %3 to i8
  %127 = add i8 %126, 1
  %128 = mul i8 %125, %127
  %129 = trunc i64 %3 to i8
  %130 = shl i8 %129, 2
  %131 = xor i8 %130, -1
  %132 = add i8 %128, %131
  %133 = add nsw i32 %5, 1
  %134 = add nsw i32 %5, 1
  %135 = mul nsw i32 %133, %134
  %.neg12 = mul i32 %5, -4
  %136 = add i32 %.neg12, %135
  %137 = add nsw i32 %136, -1
  %138 = add i16 %6, 1
  %139 = add i16 %6, 1
  %140 = mul i16 %138, %139
  %141 = shl i16 %6, 2
  %142 = xor i16 %141, -1
  %143 = add i16 %140, %142
  %144 = add i8 %7, 1
  %145 = add i8 %7, 1
  %146 = mul i8 %144, %145
  %147 = shl i8 %7, 2
  %148 = xor i8 %147, -1
  %149 = add i8 %146, %148
  %150 = and i64 %3, 4294967295
  %151 = udiv i64 %3, %150
  %152 = trunc i64 %151 to i32
  %153 = and i64 %3, 4294967295
  %154 = udiv i64 %3, %153
  %155 = trunc i64 %154 to i32
  %156 = mul i32 %152, %155
  %157 = and i64 %3, 65535
  %158 = udiv i64 %3, %157
  %159 = trunc i64 %158 to i16
  %160 = and i64 %3, 65535
  %161 = udiv i64 %3, %160
  %162 = trunc i64 %161 to i16
  %163 = mul i16 %159, %162
  %164 = and i64 %3, 255
  %165 = udiv i64 %3, %164
  %166 = trunc i64 %165 to i8
  %167 = and i64 %3, 255
  %168 = udiv i64 %3, %167
  %169 = trunc i64 %168 to i8
  %170 = mul i8 %166, %169
  %sext13 = shl i64 %3, 32
  %171 = ashr exact i64 %sext13, 32
  %172 = sdiv i64 %3, %171
  %173 = trunc i64 %172 to i32
  %sext14 = shl i64 %3, 32
  %174 = ashr exact i64 %sext14, 32
  %175 = sdiv i64 %3, %174
  %176 = trunc i64 %175 to i32
  %177 = mul nsw i32 %173, %176
  %sext15 = shl i64 %3, 48
  %178 = ashr exact i64 %sext15, 48
  %179 = sdiv i64 %3, %178
  %180 = trunc i64 %179 to i32
  %sext16 = shl i32 %180, 16
  %181 = ashr exact i32 %sext16, 16
  %sext17 = shl i64 %3, 48
  %182 = ashr exact i64 %sext17, 48
  %183 = sdiv i64 %3, %182
  %184 = trunc i64 %183 to i32
  %sext18 = shl i32 %184, 16
  %185 = ashr exact i32 %sext18, 16
  %186 = mul nsw i32 %181, %185
  %sext19 = shl i64 %3, 56
  %187 = ashr exact i64 %sext19, 56
  %188 = sdiv i64 %3, %187
  %189 = trunc i64 %188 to i32
  %sext20 = shl i32 %189, 24
  %190 = ashr exact i32 %sext20, 24
  %sext21 = shl i64 %3, 56
  %191 = ashr exact i64 %sext21, 56
  %192 = sdiv i64 %3, %191
  %193 = trunc i64 %192 to i32
  %sext22 = shl i32 %193, 24
  %194 = ashr exact i32 %sext22, 24
  %195 = mul nsw i32 %190, %194
  %putchar = call i32 @putchar(i32 10)
  %196 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 noundef %114, i32 noundef %114, i32 noundef %156, i32 noundef %156) #4
  %197 = zext i16 %123 to i32
  %198 = zext i16 %123 to i32
  %199 = zext i16 %163 to i32
  %200 = zext i16 %163 to i32
  %201 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 noundef %197, i32 noundef %198, i32 noundef %199, i32 noundef %200) #4
  %202 = zext i8 %132 to i32
  %203 = zext i8 %132 to i32
  %204 = zext i8 %170 to i32
  %205 = zext i8 %170 to i32
  %206 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205) #4
  %207 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 noundef %137, i32 noundef %137, i32 noundef %177, i32 noundef %177) #4
  %208 = sext i16 %143 to i32
  %209 = sext i16 %143 to i32
  %sext23 = shl i32 %186, 16
  %210 = ashr exact i32 %sext23, 16
  %sext24 = shl i32 %186, 16
  %211 = ashr exact i32 %sext24, 16
  %212 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 noundef %208, i32 noundef %209, i32 noundef %210, i32 noundef %211) #4
  %213 = sext i8 %149 to i32
  %214 = sext i8 %149 to i32
  %sext25 = shl i32 %195, 24
  %215 = ashr exact i32 %sext25, 24
  %sext26 = shl i32 %195, 24
  %216 = ashr exact i32 %sext26, 24
  %217 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %216) #4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
