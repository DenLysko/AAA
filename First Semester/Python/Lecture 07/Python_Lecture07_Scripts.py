from collections.abc import Iterable
from collections import Counter
import numpy as np
import math as math


class TfidfTransformer:
    @staticmethod
    def idf_transform(matrix: list[list[int]]) -> list[list[int]]:
        np_matrix = np.array(matrix)
        np_matrix = np.transpose(np_matrix)
        width = np_matrix.shape[0]
        result = []
        # Неправильно
        for row in np_matrix:
            b = np.count_nonzero(row)
            a = math.log((width + 1) / (b + 1))
            result.append((a + 1))

        print(result)
        return result

    @staticmethod
    def tf_transform(matrix: list[list[int]]) -> list[list[int]]:
        common_sum = 0
        for lst in matrix:
            common_sum += sum(lst)

        for lst in matrix:
            for i, el in enumerate(lst):
                lst[i] = round(lst[i] * 2 / common_sum, 3)

        print(matrix)
        return matrix

    def fit_transformer(self, matrix):
        return self.idf_transform(matrix) * self.tf_transform(matrix)


class TfidfVecrorizer:
    fit_transformer


if __name__ == "__main__":
    TfidfTransformer.fit_transformer(
        [[1, 1, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0], [0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1]]
    )

