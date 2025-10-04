; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.strchartype = type { i8*, i8*, i8* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }

@hashheader = external dso_local global %struct.hashheader, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = external dso_local global i32, align 4
@laststringch = external dso_local global i32, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = external dso_local global %struct.strchartype*, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @makedent(i8* noundef %0, i32 noundef %1, %struct.dent* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dent*, align 8
  %8 = alloca [120 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dent* %2, %struct.dent** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* noundef %13) #6
  %15 = sub i64 %14, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.dent*, %struct.dent** %7, align 8
  %31 = getelementptr inbounds %struct.dent, %struct.dent* %30, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %31, align 8
  %32 = load %struct.dent*, %struct.dent** %7, align 8
  %33 = getelementptr inbounds %struct.dent, %struct.dent* %32, i32 0, i32 2
  %34 = getelementptr inbounds [1 x i64], [1 x i64]* %33, i64 0, i64 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.dent*, %struct.dent** %7, align 8
  %36 = getelementptr inbounds %struct.dent, %struct.dent* %35, i32 0, i32 2
  %37 = getelementptr inbounds [1 x i64], [1 x i64]* %36, i64 0, i64 0
  %38 = bitcast i64* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 8, i1 false)
  %39 = load %struct.dent*, %struct.dent** %7, align 8
  %40 = getelementptr inbounds %struct.dent, %struct.dent* %39, i32 0, i32 2
  %41 = getelementptr inbounds [1 x i64], [1 x i64]* %40, i64 0, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, 67108864
  store i64 %43, i64* %41, align 8
  %44 = load %struct.dent*, %struct.dent** %7, align 8
  %45 = getelementptr inbounds %struct.dent, %struct.dent* %44, i32 0, i32 2
  %46 = getelementptr inbounds [1 x i64], [1 x i64]* %45, i64 0, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %47, -134217729
  store i64 %48, i64* %46, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %51 = sext i8 %50 to i32
  %52 = call i8* @index(i8* noundef %49, i32 noundef %51) #6
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %29
  %56 = load i8*, i8** %10, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %29
  %58 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strtoichar(i8* noundef %58, i8* noundef %59, i32 noundef 100, i32 noundef 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ichartostr(i8* noundef %63, i8* noundef %64, i32 noundef %65, i32 noundef 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62, %57
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %70, i32 noundef 158, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

72:                                               ; preds = %62
  %73 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  store i8* %73, i8** %9, align 8
  br label %74

74:                                               ; preds = %109, %72
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97, %93, %86
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef %105)
  store i32 -1, i32* %4, align 4
  br label %217

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  br label %74, !llvm.loop !4

112:                                              ; preds = %74
  %113 = load i8*, i8** %5, align 8
  %114 = call i64 @strlen(i8* noundef %113) #6
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  %116 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %117 = call i64 @whatcap(i8* noundef %116)
  %118 = load %struct.dent*, %struct.dent** %7, align 8
  %119 = getelementptr inbounds %struct.dent, %struct.dent* %118, i32 0, i32 2
  %120 = getelementptr inbounds [1 x i64], [1 x i64]* %119, i64 0, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %117
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %123, 99
  br i1 %124, label %125, label %129

125:                                              ; preds = %112
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %127, i32 noundef 188, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %217

129:                                              ; preds = %112
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %130, 1
  %132 = call i8* @mymalloc(i32 noundef %131)
  %133 = load %struct.dent*, %struct.dent** %7, align 8
  %134 = getelementptr inbounds %struct.dent, %struct.dent* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.dent*, %struct.dent** %7, align 8
  %136 = getelementptr inbounds %struct.dent, %struct.dent* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %141)
  store i32 -1, i32* %4, align 4
  br label %217

143:                                              ; preds = %129
  %144 = load %struct.dent*, %struct.dent** %7, align 8
  %145 = getelementptr inbounds %struct.dent, %struct.dent* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = call i8* @strcpy(i8* noundef %146, i8* noundef %147) #7
  %149 = load %struct.dent*, %struct.dent** %7, align 8
  %150 = getelementptr inbounds %struct.dent, %struct.dent* %149, i32 0, i32 2
  %151 = getelementptr inbounds [1 x i64], [1 x i64]* %150, i64 0, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = and i64 %152, 805306368
  %154 = icmp ne i64 %153, 805306368
  br i1 %154, label %155, label %159

155:                                              ; preds = %143
  %156 = load %struct.dent*, %struct.dent** %7, align 8
  %157 = getelementptr inbounds %struct.dent, %struct.dent* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  call void @chupcase(i8* noundef %158)
  br label %159

159:                                              ; preds = %155, %143
  %160 = load i8*, i8** %10, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %217

163:                                              ; preds = %159
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %10, align 8
  br label %166

166:                                              ; preds = %215, %163
  %167 = load i8*, i8** %10, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i8*, i8** %10, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 10
  br label %176

176:                                              ; preds = %171, %166
  %177 = phi i1 [ false, %166 ], [ %175, %171 ]
  br i1 %177, label %178, label %216

178:                                              ; preds = %176
  %179 = load i8*, i8** %10, align 8
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = sub nsw i32 %181, 65
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %178
  %186 = load i32, i32* %11, align 4
  %187 = icmp sle i32 %186, 26
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = shl i64 1, %190
  %192 = load %struct.dent*, %struct.dent** %7, align 8
  %193 = getelementptr inbounds %struct.dent, %struct.dent* %192, i32 0, i32 2
  %194 = getelementptr inbounds [1 x i64], [1 x i64]* %193, i64 0, i64 0
  %195 = load i64, i64* %194, align 8
  %196 = or i64 %195, %191
  store i64 %196, i64* %194, align 8
  br label %203

197:                                              ; preds = %185, %178
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 noundef %201)
  br label %203

203:                                              ; preds = %197, %188
  %204 = load i8*, i8** %10, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %10, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %203
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %10, align 8
  br label %215

215:                                              ; preds = %212, %203
  br label %166, !llvm.loop !6

216:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %162, %139, %125, %103, %68
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @index(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strtoichar(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 1
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %60, %4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %65

25:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @stringcharlen(i8* noundef %34, i32 noundef %35)
  store i32 %36, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i32 [ 1, %38 ], [ 0, %39 ]
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi i1 [ false, %25 ], [ %42, %40 ]
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = load i32, i32* @laststringch, align 4
  %47 = add i32 128, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  store i8 %48, i8* %49, align 1
  br label %59

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, 127
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %51, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %6, align 8
  br label %14, !llvm.loop !7

65:                                               ; preds = %23
  %66 = load i8*, i8** %5, align 8
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 0
  %69 = zext i1 %68 to i32
  ret i32 %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ichartostr(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %78, %4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ false, %12 ], [ %21, %16 ]
  br i1 %23, label %24, label %79

24:                                               ; preds = %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 %29, i8* %30, align 1
  br label %78

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 128
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %59, %37
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 30), i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @defdupchar, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 29), i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %9, align 4
  br label %60

59:                                               ; preds = %50, %43
  br label %39, !llvm.loop !8

60:                                               ; preds = %57, %39
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i64 0, i64 %63
  %65 = getelementptr inbounds [11 x i8], [11 x i8]* %64, i64 0, i64 0
  store i8* %65, i8** %11, align 8
  br label %66

66:                                               ; preds = %74, %61
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  %69 = load i8, i8* %67, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 %69, i8* %70, align 1
  %72 = sext i8 %69 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %66, !llvm.loop !9

75:                                               ; preds = %66
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %75, %27
  br label %12, !llvm.loop !10

79:                                               ; preds = %22
  %80 = load i8*, i8** %5, align 8
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* %7, align 4
  %82 = icmp sle i32 %81, 0
  %83 = zext i1 %82 to i32
  ret i32 %83
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @whatcap(i8* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %6, !llvm.loop !11

22:                                               ; preds = %17, %6
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i64 268435456, i64* %2, align 8
  br label %81

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %45

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %29, !llvm.loop !12

45:                                               ; preds = %40, %29
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i64 805306368, i64* %2, align 8
  br label %81

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  br label %61, !llvm.loop !13

78:                                               ; preds = %61
  store i64 536870912, i64* %2, align 8
  br label %81

79:                                               ; preds = %50
  store i64 0, i64* %2, align 8
  br label %81

80:                                               ; preds = %45
  store i64 805306368, i64* %2, align 8
  br label %81

81:                                               ; preds = %80, %79, %78, %73, %27
  %82 = load i64, i64* %2, align 8
  ret i64 %82
}

declare dso_local i8* @mymalloc(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @chupcase(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strtosichar(i8* noundef %4, i32 noundef 1)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  call void @upcase(i8* noundef %6)
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* noundef %9) #6
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i32 @ichartostr(i8* noundef %7, i8* noundef %8, i32 noundef %12, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @addvheader(%struct.dent* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dent*, align 8
  %4 = alloca %struct.dent*, align 8
  store %struct.dent* %0, %struct.dent** %3, align 8
  %5 = call i8* @mymalloc(i32 noundef 24)
  %6 = bitcast i8* %5 to %struct.dent*
  store %struct.dent* %6, %struct.dent** %4, align 8
  %7 = load %struct.dent*, %struct.dent** %4, align 8
  %8 = icmp eq %struct.dent* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct.dent*, %struct.dent** %3, align 8
  %12 = getelementptr inbounds %struct.dent, %struct.dent* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %13)
  store i32 -1, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.dent*, %struct.dent** %4, align 8
  %17 = load %struct.dent*, %struct.dent** %3, align 8
  %18 = bitcast %struct.dent* %16 to i8*
  %19 = bitcast %struct.dent* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load %struct.dent*, %struct.dent** %4, align 8
  %21 = getelementptr inbounds %struct.dent, %struct.dent* %20, i32 0, i32 2
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %21, i64 0, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %23, 805306368
  %25 = icmp ne i64 %24, 805306368
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.dent*, %struct.dent** %4, align 8
  %28 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 1
  store i8* null, i8** %28, align 8
  br label %59

29:                                               ; preds = %15
  %30 = load %struct.dent*, %struct.dent** %4, align 8
  %31 = getelementptr inbounds %struct.dent, %struct.dent* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* noundef %32) #6
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, 1
  %36 = call i8* @mymalloc(i32 noundef %35)
  %37 = load %struct.dent*, %struct.dent** %4, align 8
  %38 = getelementptr inbounds %struct.dent, %struct.dent* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.dent*, %struct.dent** %4, align 8
  %40 = getelementptr inbounds %struct.dent, %struct.dent* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %29
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load %struct.dent*, %struct.dent** %3, align 8
  %46 = getelementptr inbounds %struct.dent, %struct.dent* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %47)
  %49 = load %struct.dent*, %struct.dent** %4, align 8
  %50 = bitcast %struct.dent* %49 to i8*
  call void @myfree(i8* noundef %50)
  store i32 -1, i32* %2, align 4
  br label %76

51:                                               ; preds = %29
  %52 = load %struct.dent*, %struct.dent** %4, align 8
  %53 = getelementptr inbounds %struct.dent, %struct.dent* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.dent*, %struct.dent** %3, align 8
  %56 = getelementptr inbounds %struct.dent, %struct.dent* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @strcpy(i8* noundef %54, i8* noundef %57) #7
  br label %59

59:                                               ; preds = %51, %26
  %60 = load %struct.dent*, %struct.dent** %3, align 8
  %61 = getelementptr inbounds %struct.dent, %struct.dent* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  call void @chupcase(i8* noundef %62)
  %63 = load %struct.dent*, %struct.dent** %4, align 8
  %64 = load %struct.dent*, %struct.dent** %3, align 8
  %65 = getelementptr inbounds %struct.dent, %struct.dent* %64, i32 0, i32 0
  store %struct.dent* %63, %struct.dent** %65, align 8
  %66 = load %struct.dent*, %struct.dent** %3, align 8
  %67 = getelementptr inbounds %struct.dent, %struct.dent* %66, i32 0, i32 2
  %68 = getelementptr inbounds [1 x i64], [1 x i64]* %67, i64 0, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = and i64 %69, -805306369
  store i64 %70, i64* %68, align 8
  %71 = load %struct.dent*, %struct.dent** %3, align 8
  %72 = getelementptr inbounds %struct.dent, %struct.dent* %71, i32 0, i32 2
  %73 = getelementptr inbounds [1 x i64], [1 x i64]* %72, i64 0, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, 1342177280
  store i64 %75, i64* %73, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %59, %43, %9
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @myfree(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @combinecaps(%struct.dent* noundef %0, %struct.dent* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dent*, align 8
  %5 = alloca %struct.dent*, align 8
  %6 = alloca %struct.dent*, align 8
  %7 = alloca %struct.dent*, align 8
  %8 = alloca i32, align 4
  store %struct.dent* %0, %struct.dent** %4, align 8
  store %struct.dent* %1, %struct.dent** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dent*, %struct.dent** %4, align 8
  store %struct.dent* %9, %struct.dent** %6, align 8
  %10 = load %struct.dent*, %struct.dent** %6, align 8
  %11 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %12 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 1879048192
  %15 = icmp eq i64 %14, 1342177280
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %35, %16
  %18 = load %struct.dent*, %struct.dent** %6, align 8
  %19 = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 2
  %20 = getelementptr inbounds [1 x i64], [1 x i64]* %19, i64 0, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 1073741824
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.dent*, %struct.dent** %6, align 8
  %26 = getelementptr inbounds %struct.dent, %struct.dent* %25, i32 0, i32 0
  %27 = load %struct.dent*, %struct.dent** %26, align 8
  store %struct.dent* %27, %struct.dent** %6, align 8
  %28 = load %struct.dent*, %struct.dent** %4, align 8
  %29 = load %struct.dent*, %struct.dent** %6, align 8
  %30 = load %struct.dent*, %struct.dent** %5, align 8
  %31 = call i32 @combine_two_entries(%struct.dent* noundef %28, %struct.dent* noundef %29, %struct.dent* noundef %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %36

35:                                               ; preds = %24
  br label %17, !llvm.loop !14

36:                                               ; preds = %34, %17
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.dent*, %struct.dent** %4, align 8
  %39 = load %struct.dent*, %struct.dent** %6, align 8
  %40 = load %struct.dent*, %struct.dent** %5, align 8
  %41 = call i32 @combine_two_entries(%struct.dent* noundef %38, %struct.dent* noundef %39, %struct.dent* noundef %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %118

45:                                               ; preds = %42
  %46 = load %struct.dent*, %struct.dent** %4, align 8
  %47 = load %struct.dent*, %struct.dent** %6, align 8
  %48 = load %struct.dent*, %struct.dent** %5, align 8
  call void @forcevheader(%struct.dent* noundef %46, %struct.dent* noundef %47, %struct.dent* noundef %48)
  %49 = call i8* @mymalloc(i32 noundef 24)
  %50 = bitcast i8* %49 to %struct.dent*
  store %struct.dent* %50, %struct.dent** %7, align 8
  %51 = load %struct.dent*, %struct.dent** %7, align 8
  %52 = icmp eq %struct.dent* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load %struct.dent*, %struct.dent** %5, align 8
  %56 = getelementptr inbounds %struct.dent, %struct.dent* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %57)
  store i32 -1, i32* %3, align 4
  br label %120

59:                                               ; preds = %45
  %60 = load %struct.dent*, %struct.dent** %7, align 8
  %61 = load %struct.dent*, %struct.dent** %5, align 8
  %62 = bitcast %struct.dent* %60 to i8*
  %63 = bitcast %struct.dent* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  %64 = load %struct.dent*, %struct.dent** %4, align 8
  %65 = getelementptr inbounds %struct.dent, %struct.dent* %64, i32 0, i32 0
  %66 = load %struct.dent*, %struct.dent** %65, align 8
  %67 = load %struct.dent*, %struct.dent** %7, align 8
  %68 = getelementptr inbounds %struct.dent, %struct.dent* %67, i32 0, i32 0
  store %struct.dent* %66, %struct.dent** %68, align 8
  %69 = load %struct.dent*, %struct.dent** %7, align 8
  %70 = load %struct.dent*, %struct.dent** %4, align 8
  %71 = getelementptr inbounds %struct.dent, %struct.dent* %70, i32 0, i32 0
  store %struct.dent* %69, %struct.dent** %71, align 8
  %72 = load %struct.dent*, %struct.dent** %4, align 8
  %73 = getelementptr inbounds %struct.dent, %struct.dent* %72, i32 0, i32 2
  %74 = getelementptr inbounds [1 x i64], [1 x i64]* %73, i64 0, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %75, 1073741824
  %77 = load %struct.dent*, %struct.dent** %7, align 8
  %78 = getelementptr inbounds %struct.dent, %struct.dent* %77, i32 0, i32 2
  %79 = getelementptr inbounds [1 x i64], [1 x i64]* %78, i64 0, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %76
  store i64 %81, i64* %79, align 8
  %82 = load %struct.dent*, %struct.dent** %4, align 8
  %83 = getelementptr inbounds %struct.dent, %struct.dent* %82, i32 0, i32 2
  %84 = getelementptr inbounds [1 x i64], [1 x i64]* %83, i64 0, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %85, 1073741824
  store i64 %86, i64* %84, align 8
  %87 = load %struct.dent*, %struct.dent** %4, align 8
  %88 = load %struct.dent*, %struct.dent** %5, align 8
  call void @combineaffixes(%struct.dent* noundef %87, %struct.dent* noundef %88)
  %89 = load %struct.dent*, %struct.dent** %5, align 8
  %90 = getelementptr inbounds %struct.dent, %struct.dent* %89, i32 0, i32 2
  %91 = getelementptr inbounds [1 x i64], [1 x i64]* %90, i64 0, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, 134217728
  %94 = load %struct.dent*, %struct.dent** %4, align 8
  %95 = getelementptr inbounds %struct.dent, %struct.dent* %94, i32 0, i32 2
  %96 = getelementptr inbounds [1 x i64], [1 x i64]* %95, i64 0, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = or i64 %97, %93
  store i64 %98, i64* %96, align 8
  %99 = load %struct.dent*, %struct.dent** %5, align 8
  %100 = getelementptr inbounds %struct.dent, %struct.dent* %99, i32 0, i32 2
  %101 = getelementptr inbounds [1 x i64], [1 x i64]* %100, i64 0, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %102, 805306368
  %104 = icmp eq i64 %103, 805306368
  br i1 %104, label %105, label %111

105:                                              ; preds = %59
  %106 = load %struct.dent*, %struct.dent** %5, align 8
  %107 = getelementptr inbounds %struct.dent, %struct.dent* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.dent*, %struct.dent** %7, align 8
  %110 = getelementptr inbounds %struct.dent, %struct.dent* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %117

111:                                              ; preds = %59
  %112 = load %struct.dent*, %struct.dent** %7, align 8
  %113 = getelementptr inbounds %struct.dent, %struct.dent* %112, i32 0, i32 1
  store i8* null, i8** %113, align 8
  %114 = load %struct.dent*, %struct.dent** %5, align 8
  %115 = getelementptr inbounds %struct.dent, %struct.dent* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  call void @myfree(i8* noundef %116)
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117, %42
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %53
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @combine_two_entries(%struct.dent* noundef %0, %struct.dent* noundef %1, %struct.dent* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dent*, align 8
  %6 = alloca %struct.dent*, align 8
  %7 = alloca %struct.dent*, align 8
  store %struct.dent* %0, %struct.dent** %5, align 8
  store %struct.dent* %1, %struct.dent** %6, align 8
  store %struct.dent* %2, %struct.dent** %7, align 8
  %8 = load %struct.dent*, %struct.dent** %6, align 8
  %9 = load %struct.dent*, %struct.dent** %7, align 8
  %10 = call i32 @acoversb(%struct.dent* noundef %8, %struct.dent* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  %13 = load %struct.dent*, %struct.dent** %6, align 8
  %14 = load %struct.dent*, %struct.dent** %7, align 8
  call void @combineaffixes(%struct.dent* noundef %13, %struct.dent* noundef %14)
  %15 = load %struct.dent*, %struct.dent** %7, align 8
  %16 = getelementptr inbounds %struct.dent, %struct.dent* %15, i32 0, i32 2
  %17 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, 134217728
  %20 = load %struct.dent*, %struct.dent** %6, align 8
  %21 = getelementptr inbounds %struct.dent, %struct.dent* %20, i32 0, i32 2
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %21, i64 0, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = or i64 %23, %19
  store i64 %24, i64* %22, align 8
  %25 = load %struct.dent*, %struct.dent** %7, align 8
  %26 = getelementptr inbounds %struct.dent, %struct.dent* %25, i32 0, i32 2
  %27 = getelementptr inbounds [1 x i64], [1 x i64]* %26, i64 0, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %28, 134217728
  %30 = load %struct.dent*, %struct.dent** %5, align 8
  %31 = getelementptr inbounds %struct.dent, %struct.dent* %30, i32 0, i32 2
  %32 = getelementptr inbounds [1 x i64], [1 x i64]* %31, i64 0, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %29
  store i64 %34, i64* %32, align 8
  %35 = load %struct.dent*, %struct.dent** %7, align 8
  %36 = getelementptr inbounds %struct.dent, %struct.dent* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  call void @myfree(i8* noundef %37)
  store i32 1, i32* %4, align 4
  br label %114

38:                                               ; preds = %3
  %39 = load %struct.dent*, %struct.dent** %7, align 8
  %40 = load %struct.dent*, %struct.dent** %6, align 8
  %41 = call i32 @acoversb(%struct.dent* noundef %39, %struct.dent* noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %113

43:                                               ; preds = %38
  %44 = load %struct.dent*, %struct.dent** %7, align 8
  %45 = load %struct.dent*, %struct.dent** %6, align 8
  call void @combineaffixes(%struct.dent* noundef %44, %struct.dent* noundef %45)
  %46 = load %struct.dent*, %struct.dent** %6, align 8
  %47 = getelementptr inbounds %struct.dent, %struct.dent* %46, i32 0, i32 2
  %48 = getelementptr inbounds [1 x i64], [1 x i64]* %47, i64 0, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, 1207959552
  %51 = load %struct.dent*, %struct.dent** %7, align 8
  %52 = getelementptr inbounds %struct.dent, %struct.dent* %51, i32 0, i32 2
  %53 = getelementptr inbounds [1 x i64], [1 x i64]* %52, i64 0, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %50
  store i64 %55, i64* %53, align 8
  %56 = load %struct.dent*, %struct.dent** %7, align 8
  %57 = getelementptr inbounds %struct.dent, %struct.dent* %56, i32 0, i32 2
  %58 = getelementptr inbounds [1 x i64], [1 x i64]* %57, i64 0, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 134217728
  %61 = load %struct.dent*, %struct.dent** %5, align 8
  %62 = getelementptr inbounds %struct.dent, %struct.dent* %61, i32 0, i32 2
  %63 = getelementptr inbounds [1 x i64], [1 x i64]* %62, i64 0, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %60
  store i64 %65, i64* %63, align 8
  %66 = load %struct.dent*, %struct.dent** %6, align 8
  %67 = getelementptr inbounds %struct.dent, %struct.dent* %66, i32 0, i32 0
  %68 = load %struct.dent*, %struct.dent** %67, align 8
  %69 = load %struct.dent*, %struct.dent** %7, align 8
  %70 = getelementptr inbounds %struct.dent, %struct.dent* %69, i32 0, i32 0
  store %struct.dent* %68, %struct.dent** %70, align 8
  %71 = load %struct.dent*, %struct.dent** %6, align 8
  %72 = getelementptr inbounds %struct.dent, %struct.dent* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %43
  %76 = load %struct.dent*, %struct.dent** %6, align 8
  %77 = getelementptr inbounds %struct.dent, %struct.dent* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.dent*, %struct.dent** %7, align 8
  %80 = getelementptr inbounds %struct.dent, %struct.dent* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strcpy(i8* noundef %78, i8* noundef %81) #7
  br label %83

83:                                               ; preds = %75, %43
  %84 = load %struct.dent*, %struct.dent** %7, align 8
  %85 = getelementptr inbounds %struct.dent, %struct.dent* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  call void @myfree(i8* noundef %86)
  %87 = load %struct.dent*, %struct.dent** %6, align 8
  %88 = getelementptr inbounds %struct.dent, %struct.dent* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.dent*, %struct.dent** %7, align 8
  %91 = getelementptr inbounds %struct.dent, %struct.dent* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.dent*, %struct.dent** %6, align 8
  %93 = load %struct.dent*, %struct.dent** %7, align 8
  %94 = bitcast %struct.dent* %92 to i8*
  %95 = bitcast %struct.dent* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  %96 = load %struct.dent*, %struct.dent** %7, align 8
  %97 = getelementptr inbounds %struct.dent, %struct.dent* %96, i32 0, i32 2
  %98 = getelementptr inbounds [1 x i64], [1 x i64]* %97, i64 0, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 805306368
  %101 = icmp eq i64 %100, 805306368
  br i1 %101, label %102, label %112

102:                                              ; preds = %83
  %103 = load %struct.dent*, %struct.dent** %5, align 8
  %104 = getelementptr inbounds %struct.dent, %struct.dent* %103, i32 0, i32 2
  %105 = getelementptr inbounds [1 x i64], [1 x i64]* %104, i64 0, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, 1879048192
  %108 = icmp ne i64 %107, 1342177280
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.dent*, %struct.dent** %5, align 8
  %111 = call i32 @addvheader(%struct.dent* noundef %110)
  br label %112

112:                                              ; preds = %109, %102, %83
  store i32 1, i32* %4, align 4
  br label %114

113:                                              ; preds = %38
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %112, %12
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

; Function Attrs: noinline nounwind uwtable
define internal void @forcevheader(%struct.dent* noundef %0, %struct.dent* noundef %1, %struct.dent* noundef %2) #0 {
  %4 = alloca %struct.dent*, align 8
  %5 = alloca %struct.dent*, align 8
  %6 = alloca %struct.dent*, align 8
  store %struct.dent* %0, %struct.dent** %4, align 8
  store %struct.dent* %1, %struct.dent** %5, align 8
  store %struct.dent* %2, %struct.dent** %6, align 8
  %7 = load %struct.dent*, %struct.dent** %4, align 8
  %8 = getelementptr inbounds %struct.dent, %struct.dent* %7, i32 0, i32 2
  %9 = getelementptr inbounds [1 x i64], [1 x i64]* %8, i64 0, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %10, 1879048192
  %12 = icmp eq i64 %11, 268435456
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.dent*, %struct.dent** %5, align 8
  %15 = getelementptr inbounds %struct.dent, %struct.dent* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dent*, %struct.dent** %6, align 8
  %19 = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 2
  %20 = getelementptr inbounds [1 x i64], [1 x i64]* %19, i64 0, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = xor i64 %17, %21
  %23 = and i64 %22, 134217728
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %37

26:                                               ; preds = %13, %3
  %27 = load %struct.dent*, %struct.dent** %4, align 8
  %28 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %28, i64 0, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 1879048192
  %32 = icmp ne i64 %31, 1342177280
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.dent*, %struct.dent** %4, align 8
  %35 = call i32 @addvheader(%struct.dent* noundef %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %25, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @combineaffixes(%struct.dent* noundef %0, %struct.dent* noundef %1) #0 {
  %3 = alloca %struct.dent*, align 8
  %4 = alloca %struct.dent*, align 8
  store %struct.dent* %0, %struct.dent** %3, align 8
  store %struct.dent* %1, %struct.dent** %4, align 8
  %5 = load %struct.dent*, %struct.dent** %4, align 8
  %6 = getelementptr inbounds %struct.dent, %struct.dent* %5, i32 0, i32 2
  %7 = getelementptr inbounds [1 x i64], [1 x i64]* %6, i64 0, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = and i64 %8, -2080374785
  %10 = load %struct.dent*, %struct.dent** %3, align 8
  %11 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %12 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = or i64 %13, %9
  store i64 %14, i64* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @upcase(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3, !llvm.loop !15

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lowcase(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3, !llvm.loop !16

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strtosichar(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @strtoichar(i8* noundef getelementptr inbounds ([184 x i8], [184 x i8]* @strtosichar.out, i64 0, i64 0), i8* noundef %5, i32 noundef 184, i32 noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %11, i32 noundef 944, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %2
  ret i8* getelementptr inbounds ([184 x i8], [184 x i8]* @strtosichar.out, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @toutent(%struct._IO_FILE* noundef %0, %struct.dent* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.dent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dent*, align 8
  %8 = alloca [120 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.dent* %1, %struct.dent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dent*, %struct.dent** %5, align 8
  store %struct.dent* %9, %struct.dent** %7, align 8
  %10 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %11 = load %struct.dent*, %struct.dent** %7, align 8
  %12 = getelementptr inbounds %struct.dent, %struct.dent* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strtoichar(i8* noundef %10, i8* noundef %13, i32 noundef 100, i32 noundef 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load %struct.dent*, %struct.dent** %7, align 8
  %19 = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %20, i32 noundef 700, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %16, %3
  br label %23

23:                                               ; preds = %94, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.dent*, %struct.dent** %7, align 8
  %28 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %28, i64 0, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 134217728
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %26, %23
  %34 = load %struct.dent*, %struct.dent** %7, align 8
  %35 = getelementptr inbounds %struct.dent, %struct.dent* %34, i32 0, i32 2
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %35, i64 0, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 805306368
  switch i64 %38, label %81 [
    i64 0, label %39
    i64 268435456, label %45
    i64 536870912, label %63
    i64 805306368, label %75
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  call void @lowcase(i8* noundef %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %42 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %43 = call i8* @ichartosstr(i8* noundef %42, i32 noundef 1)
  %44 = load %struct.dent*, %struct.dent** %7, align 8
  call void @toutword(%struct._IO_FILE* noundef %41, i8* noundef %43, %struct.dent* noundef %44)
  br label %81

45:                                               ; preds = %33
  %46 = load %struct.dent*, %struct.dent** %7, align 8
  %47 = getelementptr inbounds %struct.dent, %struct.dent* %46, i32 0, i32 2
  %48 = getelementptr inbounds [1 x i64], [1 x i64]* %47, i64 0, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, 1073741824
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load %struct.dent*, %struct.dent** %7, align 8
  %54 = load %struct.dent*, %struct.dent** %5, align 8
  %55 = icmp ne %struct.dent* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %45
  %57 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  call void @upcase(i8* noundef %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %59 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %60 = call i8* @ichartosstr(i8* noundef %59, i32 noundef 1)
  %61 = load %struct.dent*, %struct.dent** %7, align 8
  call void @toutword(%struct._IO_FILE* noundef %58, i8* noundef %60, %struct.dent* noundef %61)
  br label %62

62:                                               ; preds = %56, %52
  br label %81

63:                                               ; preds = %33
  %64 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  call void @lowcase(i8* noundef %64)
  %65 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  store i8 %69, i8* %70, align 16
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %72 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %73 = call i8* @ichartosstr(i8* noundef %72, i32 noundef 1)
  %74 = load %struct.dent*, %struct.dent** %7, align 8
  call void @toutword(%struct._IO_FILE* noundef %71, i8* noundef %73, %struct.dent* noundef %74)
  br label %81

75:                                               ; preds = %33
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %77 = load %struct.dent*, %struct.dent** %7, align 8
  %78 = getelementptr inbounds %struct.dent, %struct.dent* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.dent*, %struct.dent** %7, align 8
  call void @toutword(%struct._IO_FILE* noundef %76, i8* noundef %79, %struct.dent* noundef %80)
  br label %81

81:                                               ; preds = %33, %75, %63, %62, %39
  br label %82

82:                                               ; preds = %81, %26
  %83 = load %struct.dent*, %struct.dent** %7, align 8
  %84 = getelementptr inbounds %struct.dent, %struct.dent* %83, i32 0, i32 2
  %85 = getelementptr inbounds [1 x i64], [1 x i64]* %84, i64 0, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, 1073741824
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.dent*, %struct.dent** %7, align 8
  %91 = getelementptr inbounds %struct.dent, %struct.dent* %90, i32 0, i32 0
  %92 = load %struct.dent*, %struct.dent** %91, align 8
  store %struct.dent* %92, %struct.dent** %7, align 8
  br label %94

93:                                               ; preds = %82
  br label %95

94:                                               ; preds = %89
  br label %23

95:                                               ; preds = %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @toutword(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct.dent* noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dent*, align 8
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dent* %2, %struct.dent** %6, align 8
  store i32 0, i32* @has_marker, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 26
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.dent*, %struct.dent** %6, align 8
  %16 = getelementptr inbounds %struct.dent, %struct.dent* %15, i32 0, i32 2
  %17 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = and i64 %18, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 65
  call void @flagout(%struct._IO_FILE* noundef %25, i32 noundef %27)
  br label %28

28:                                               ; preds = %24, %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %11, !llvm.loop !17

32:                                               ; preds = %11
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ichartosstr(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ichartostr(i8* noundef getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i64 0, i64 0), i8* noundef %5, i32 noundef 184, i32 noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i64 0, i64 0), i32 noundef 958, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  ret i8* getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stringcharlen(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @defdupchar, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %126, %19
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %127

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i64 0, i64 %31
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* %32, i64 0, i64 0
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %51, %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = and i32 %47, 127
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %54

51:                                               ; preds = %39
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  br label %35, !llvm.loop !18

54:                                               ; preds = %50, %35
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 30), i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 29), i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* @laststringch, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i64 0, i64 %73
  %75 = getelementptr inbounds [11 x i8], [11 x i8]* %74, i64 0, i64 0
  %76 = ptrtoint i8* %71 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %128

80:                                               ; preds = %59
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, 127
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %92, 127
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %126

98:                                               ; preds = %84
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, 127
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 127
  %107 = icmp sgt i32 %102, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %125

111:                                              ; preds = %98
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 30), i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %124

121:                                              ; preds = %111
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %95
  br label %21, !llvm.loop !19

127:                                              ; preds = %21
  store i32 -1, i32* @laststringch, align 4
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %66
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @printichar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 128
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 1), align 1
  br label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sub i32 %9, 128
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i64 0, i64 %11
  %13 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %14 = call i8* @strcpy(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 0), i8* noundef %13) #7
  br label %15

15:                                               ; preds = %8, %5
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findfiletype(i8* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* noundef %12) #6
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %24, i64 %26
  %28 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef %23, i8* noundef %29) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %36, i64 %38
  %40 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* noundef %41, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %32
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %115

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %18, !llvm.loop !20

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52, %3
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %111, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %54
  %59 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %59, i64 %61
  %63 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %104, %58
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @strlen(i8* noundef %71) #6
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strcmp(i8* noundef %83, i8* noundef %84) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %77
  %88 = load i32*, i32** %7, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %91, i64 %93
  %95 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcmp(i8* noundef %96, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %90, %87
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %115

103:                                              ; preds = %77, %70
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i8*, i8** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %8, align 8
  br label %65, !llvm.loop !21

110:                                              ; preds = %65
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %54, !llvm.loop !22

114:                                              ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %101, %46
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @acoversb(%struct.dent* noundef %0, %struct.dent* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dent*, align 8
  %5 = alloca %struct.dent*, align 8
  %6 = alloca i32, align 4
  store %struct.dent* %0, %struct.dent** %4, align 8
  store %struct.dent* %1, %struct.dent** %5, align 8
  %7 = load %struct.dent*, %struct.dent** %5, align 8
  %8 = load %struct.dent*, %struct.dent** %4, align 8
  %9 = call i32 @issubset(%struct.dent* noundef %7, %struct.dent* noundef %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.dent*, %struct.dent** %4, align 8
  %13 = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 2
  %14 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dent*, %struct.dent** %5, align 8
  %17 = getelementptr inbounds %struct.dent, %struct.dent* %16, i32 0, i32 2
  %18 = getelementptr inbounds [1 x i64], [1 x i64]* %17, i64 0, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = xor i64 %15, %19
  %21 = and i64 %20, 134217728
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.dent*, %struct.dent** %4, align 8
  %25 = getelementptr inbounds %struct.dent, %struct.dent* %24, i32 0, i32 2
  %26 = getelementptr inbounds [1 x i64], [1 x i64]* %25, i64 0, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, 134217728
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %104

31:                                               ; preds = %23, %11
  br label %46

32:                                               ; preds = %2
  %33 = load %struct.dent*, %struct.dent** %4, align 8
  %34 = getelementptr inbounds %struct.dent, %struct.dent* %33, i32 0, i32 2
  %35 = getelementptr inbounds [1 x i64], [1 x i64]* %34, i64 0, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dent*, %struct.dent** %5, align 8
  %38 = getelementptr inbounds %struct.dent, %struct.dent* %37, i32 0, i32 2
  %39 = getelementptr inbounds [1 x i64], [1 x i64]* %38, i64 0, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = xor i64 %36, %40
  %42 = and i64 %41, 134217728
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %104

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.dent*, %struct.dent** %4, align 8
  %48 = getelementptr inbounds %struct.dent, %struct.dent* %47, i32 0, i32 2
  %49 = getelementptr inbounds [1 x i64], [1 x i64]* %48, i64 0, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dent*, %struct.dent** %5, align 8
  %52 = getelementptr inbounds %struct.dent, %struct.dent* %51, i32 0, i32 2
  %53 = getelementptr inbounds [1 x i64], [1 x i64]* %52, i64 0, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = xor i64 %50, %54
  %56 = and i64 %55, 805306368
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %46
  %59 = load %struct.dent*, %struct.dent** %4, align 8
  %60 = getelementptr inbounds %struct.dent, %struct.dent* %59, i32 0, i32 2
  %61 = getelementptr inbounds [1 x i64], [1 x i64]* %60, i64 0, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %62, 805306368
  %64 = icmp ne i64 %63, 805306368
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = load %struct.dent*, %struct.dent** %4, align 8
  %67 = getelementptr inbounds %struct.dent, %struct.dent* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.dent*, %struct.dent** %5, align 8
  %70 = getelementptr inbounds %struct.dent, %struct.dent* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* noundef %68, i8* noundef %71) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %58
  store i32 1, i32* %3, align 4
  br label %104

75:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %104

76:                                               ; preds = %46
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %104

80:                                               ; preds = %76
  %81 = load %struct.dent*, %struct.dent** %5, align 8
  %82 = getelementptr inbounds %struct.dent, %struct.dent* %81, i32 0, i32 2
  %83 = getelementptr inbounds [1 x i64], [1 x i64]* %82, i64 0, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, 805306368
  %86 = icmp eq i64 %85, 268435456
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %104

88:                                               ; preds = %80
  %89 = load %struct.dent*, %struct.dent** %4, align 8
  %90 = getelementptr inbounds %struct.dent, %struct.dent* %89, i32 0, i32 2
  %91 = getelementptr inbounds [1 x i64], [1 x i64]* %90, i64 0, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, 805306368
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.dent*, %struct.dent** %5, align 8
  %97 = getelementptr inbounds %struct.dent, %struct.dent* %96, i32 0, i32 2
  %98 = getelementptr inbounds [1 x i64], [1 x i64]* %97, i64 0, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 805306368
  %101 = icmp eq i64 %100, 536870912
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %104

103:                                              ; preds = %95, %88
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %102, %87, %79, %75, %74, %44, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @issubset(%struct.dent* noundef %0, %struct.dent* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dent*, align 8
  %5 = alloca %struct.dent*, align 8
  store %struct.dent* %0, %struct.dent** %4, align 8
  store %struct.dent* %1, %struct.dent** %5, align 8
  %6 = load %struct.dent*, %struct.dent** %4, align 8
  %7 = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 2
  %8 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dent*, %struct.dent** %5, align 8
  %11 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %12 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %9, %13
  %15 = load %struct.dent*, %struct.dent** %4, align 8
  %16 = getelementptr inbounds %struct.dent, %struct.dent* %15, i32 0, i32 2
  %17 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %14, %18
  %20 = and i64 %19, -2080374785
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal void @flagout(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @has_marker, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %9 = sext i8 %8 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = call i32 @putc(i32 noundef %9, %struct._IO_FILE* noundef %10)
  br label %12

12:                                               ; preds = %7, %2
  store i32 1, i32* @has_marker, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %15 = call i32 @putc(i32 noundef %13, %struct._IO_FILE* noundef %14)
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
