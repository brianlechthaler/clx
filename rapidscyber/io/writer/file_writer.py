from abc import ABC, abstractmethod


class FileWriter(Writer):
    @abstractmethod
    def write_as_text(self):
        pass

    @abstractmethod
    def write_as_parquet(self):
        pass

    @abstractmethod
    def write_data(self):
        pass
