#!/usr/bin/env python3
import os
import nbformat

def get_output_percentage(file_path):
    nb = nbformat.read(file_path, as_version=nbformat.NO_CONVERT)
    total_cells = len(nb.cells)
    code_cells = [cell for cell in nb.cells if cell.cell_type == 'code']
    executed_cells = [cell for cell in code_cells if cell.outputs or cell.execution_count]
    executed_cell_count = len(executed_cells)
    code_cell_count = len(code_cells)
    return (executed_cell_count / code_cell_count) * 100 if code_cell_count > 0 else 0

dir_path = os.getcwd()
ipynb_files = [f for f in os.listdir(dir_path) if f.endswith('.ipynb')]

file_info = []
for f in ipynb_files:
    file_path = os.path.join(dir_path, f)
    nb = nbformat.read(file_path, as_version=nbformat.NO_CONVERT)
    output_percentage = get_output_percentage(file_path)
    status = f"{output_percentage:.2f}%" if output_percentage > 0 else "-"
    title = f.split('_', 1)[1].replace('.ipynb', '').replace('_', ' ')
    markdown_title = f"[{title}](classes/{f})"
    file_info.append((f.split('_')[0], markdown_title, status))

file_info.sort(key=lambda x: int(x[0]))

table = "| # | __📝 Lecture__ | __Status__ |\n| --- | --- | --- |\n"
for file in file_info:
    table += f"| {file[0]} | {file[1]} | {file[2]} |\n"

print(table)
