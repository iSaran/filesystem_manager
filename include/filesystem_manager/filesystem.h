#ifndef FILESYSTEM_MANAGER__FILESYSTEM_H
#define FILESYSTEM_MANAGER__FILESYSTEM_H

#include <string>  // std::string
#include <vector>  // std::vector

namespace filesystem_manager
{

class Filesystem
{
private:
  std::vector<std::string> project_path;
  std::vector<std::string> project;
  void loadConfig(const std::string &path);
  
public:
  Filesystem();
  std::vector<std::string> getProject();
  std::string getProjectPath(const std::string &project);
};

}  // namespace filesystem_manager

#endif // FILESYSTEM_MANAGER__FILESYSTEM_H
