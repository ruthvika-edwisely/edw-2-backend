-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	9.5.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'd8de4b9d-d44a-11f0-82eb-76b7400c9a05:1-96';

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'mvsr','2025-12-10 07:29:00');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constraint_table`
--

DROP TABLE IF EXISTS `constraint_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constraint_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `order` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  CONSTRAINT `constraint_table_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constraint_table`
--

LOCK TABLES `constraint_table` WRITE;
/*!40000 ALTER TABLE `constraint_table` DISABLE KEYS */;
INSERT INTO `constraint_table` VALUES (1,'2 <= nums.length <= 10^4',1,'2025-12-10 07:25:27',1),(2,'-10^9 <= nums[i] <= 10^9',2,'2025-12-10 07:25:27',1),(3,'-10^9 <= target <= 10^9',3,'2025-12-10 07:25:27',1),(4,'Only one valid answer exists',4,'2025-12-10 07:25:27',1),(5,'The number of nodes in the list is in the range [0, 5000]',1,'2025-12-10 07:25:48',2),(6,'-5000 <= Node.val <= 5000',2,'2025-12-10 07:25:48',2),(7,'1 <= s.length <= 10^4',1,'2025-12-10 07:26:08',3),(8,'s consists of parentheses only \'()[]{}\'',2,'2025-12-10 07:26:08',3),(9,'The number of nodes in both lists is in the range [0, 50]',1,'2025-12-10 07:26:44',4),(10,'-100 <= Node.val <= 100',2,'2025-12-10 07:26:44',4),(11,'Both list1 and list2 are sorted in non-decreasing order',3,'2025-12-10 07:26:44',4),(12,'1 <= prices.length <= 10^5',1,'2025-12-10 07:27:15',5),(13,'0 <= prices[i] <= 10^4',2,'2025-12-10 07:27:15',5),(14,'1 <= nums.length <= 10^5',1,'2025-12-10 07:27:31',6),(15,'-10^4 <= nums[i] <= 10^4',2,'2025-12-10 07:27:31',6),(16,'1 <= n <= 45',1,'2025-12-10 07:27:49',7);
/*!40000 ALTER TABLE `constraint_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_markdown` json DEFAULT NULL,
  `content_html` text,
  `videoUrl` text,
  `created_at` datetime DEFAULT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problem_id` (`problem_id`),
  CONSTRAINT `editorial_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'{\"title\": \"Two sum\", \"overview\": \"\\nThe **Two Sum** problem asks us to find two indices such that their values add up to a given target.\\n\\nA few common approaches are:\\n- Brute Force using nested loops\\n- Hash Map for an optimal O(n) solution\\n\\nBelow are detailed explanations of both approaches.\\n                \", \"videoUrl\": \"https://www.youtube.com/watch?v=KLlXCFG5TnA\", \"approaches\": [{\"id\": \"brute_force\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    vector<int> twoSum(vector<int>& nums, int target) {\\n        for (int i = 0; i < nums.size(); i++) {\\n            for (int j = i + 1; j < nums.size(); j++) {\\n                if (nums[i] + nums[j] == target) {\\n                    return {i, j};\\n                }\\n            }\\n        }\\n        return {};\\n    }\\n                };\\n                \", \"java\": \"\\nclass Solution {\\n    public int[] twoSum(int[] nums, int target) {\\n        for (int i = 0; i < nums.length; i++) {\\n            for (int j = i + 1; j < nums.length; j++) {\\n                if (nums[i] + nums[j] == target) {\\n                    return new int[]{i, j};\\n                }\\n            }\\n        }\\n        return new int[]{};\\n    }\\n                }\\n                \", \"python\": \"\\nclass Solution:\\n    def twoSum(self, nums, target):\\n        for i in range(len(nums)):\\n            for j in range(i + 1, len(nums)):\\n                if nums[i] + nums[j] == target:\\n                    return [i, j]\\n                \"}, \"title\": \"Approach 1: Brute Force\", \"explanation\": \"\\nThe simplest idea is to check every possible pair of numbers.\\n\\n### Algorithm\\n1. Loop through each index `i`\\n2. For each `i`, loop through each index `j > i`\\n3. If `nums[i] + nums[j] == target`, return `[i, j]`\\n\\n### Why it works\\nWe explore all combinations, so if a solution exists, we will find it.\\n\\n### Complexity\\n- Time: O(n²)\\n- Space: O(1)\\n                \"}, {\"id\": \"optimal_hashmap\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    vector<int> twoSum(vector<int>& nums, int target) {\\n        unordered_map<int, int> seen;\\n\\n        for (int i = 0; i < nums.size(); i++) {\\n            int complement = target - nums[i];\\n\\n            if (seen.count(complement)) {\\n                return {seen[complement], i};\\n            }\\n\\n            seen[nums[i]] = i;\\n        }\\n\\n        return {};\\n    }\\n};\\n                \", \"java\": \"\\nclass Solution {\\n    public int[] twoSum(int[] nums, int target) {\\n        Map<Integer, Integer> seen = new HashMap<>();\\n\\n        for (int i = 0; i < nums.length; i++) {\\n            int complement = target - nums[i];\\n\\n            if (seen.containsKey(complement)) {\\n                return new int[]{seen.get(complement), i};\\n            }\\n\\n            seen.put(nums[i], i);\\n        }\\n\\n        return new int[]{};\\n    }\\n                }\\n                \", \"python\": \"\\nclass Solution:\\n    def twoSum(self, nums, target):\\n        seen = {}\\n        for i, value in enumerate(nums):\\n            complement = target - value\\n            if complement in seen:\\n                return [seen[complement], i]\\n            seen[value] = i\\n                \"}, \"title\": \"Approach 2: Hash Map (Optimal O(n))\", \"explanation\": \"\\nWe can solve the problem in **one pass** using a hash map.\\n\\n### Key Idea\\nWhile iterating over the array:\\n- Compute the complement: `target - nums[i]`\\n- If the complement is already in the map → we found the answer\\n- Otherwise, store the current number in the map\\n\\n### Algorithm\\n1. Create an empty hash map\\n2. Loop through each index `i`\\n3. Let `num = nums[i]`\\n4. Compute `complement = target - num`\\n5. If complement is in the map, return `[map[complement], i]`\\n6. Otherwise, store `map[num] = i`\\n\\n### Complexity\\n- Time: O(n)\\n- Space: O(n)\\n                \"}]}',NULL,'https://www.youtube.com/watch?v=KLlXCFG5TnA','2025-12-10 07:25:27',1),(2,'{\"title\": \"Reverse Linked List\", \"overview\": \"\\nThe **Reverse Linked List** problem is a fundamental linked list manipulation problem that tests your understanding of pointer operations.\\n\\nThe goal is to reverse the direction of all the \'next\' pointers in a singly linked list, making the last node become the first and vice versa.\\n\\n### Key Approaches:\\n- Iterative approach using three pointers\\n- Recursive approach using the call stack\\n- Both solutions achieve O(n) time complexity\\n\\nThis problem is frequently asked in technical interviews and serves as a building block for more complex linked list problems.\\n        \", \"videoUrl\": \"https://www.youtube.com/watch?v=N_Y4lZBEi0g\", \"approaches\": [{\"id\": \"iterative\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    ListNode* reverseList(ListNode* head) {\\n        ListNode* prev = nullptr;\\n        ListNode* current = head;\\n        \\n        while (current != nullptr) {\\n            ListNode* nextNode = current->next;\\n            current->next = prev;\\n            prev = current;\\n            current = nextNode;\\n        }\\n        \\n        return prev;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public ListNode reverseList(ListNode head) {\\n        ListNode prev = null;\\n        ListNode current = head;\\n        \\n        while (current != null) {\\n            ListNode nextNode = current.next;\\n            current.next = prev;\\n            prev = current;\\n            current = nextNode;\\n        }\\n        \\n        return prev;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def reverseList(self, head):\\n        prev = None\\n        current = head\\n        \\n        while current:\\n            next_node = current.next\\n            current.next = prev\\n            prev = current\\n            current = next_node\\n        \\n        return prev\\n            \"}, \"title\": \"Approach 1: Iterative Solution\", \"explanation\": \"\\nThe iterative approach uses three pointers to reverse the list in a single pass.\\n\\n### Algorithm\\n1. Initialize three pointers: `prev = None`, `current = head`, `next = None`\\n2. Iterate through the list:\\n   - Save the next node: `next = current.next`\\n   - Reverse the pointer: `current.next = prev`\\n   - Move prev forward: `prev = current`\\n   - Move current forward: `current = next`\\n3. Return `prev` as the new head\\n\\n### Why it works\\nAt each step, we\'re breaking the forward link and creating a backward link. By the time we finish traversing, all links are reversed.\\n\\n### Visualization\\nOriginal: 1 -> 2 -> 3 -> None\\nStep 1:   None <- 1    2 -> 3 -> None\\nStep 2:   None <- 1 <- 2    3 -> None\\nStep 3:   None <- 1 <- 2 <- 3\\n\\n### Complexity\\n- Time: O(n) - single pass through the list\\n- Space: O(1) - only using three pointers\\n            \"}, {\"id\": \"recursive\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    ListNode* reverseList(ListNode* head) {\\n        // Base case: empty list or single node\\n        if (head == nullptr || head->next == nullptr) {\\n            return head;\\n        }\\n        \\n        // Recursively reverse the rest of the list\\n        ListNode* newHead = reverseList(head->next);\\n        \\n        // Reverse the pointer\\n        head->next->next = head;\\n        head->next = nullptr;\\n        \\n        return newHead;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public ListNode reverseList(ListNode head) {\\n        // Base case: empty list or single node\\n        if (head == null || head.next == null) {\\n            return head;\\n        }\\n        \\n        // Recursively reverse the rest of the list\\n        ListNode newHead = reverseList(head.next);\\n        \\n        // Reverse the pointer\\n        head.next.next = head;\\n        head.next = null;\\n        \\n        return newHead;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def reverseList(self, head):\\n        # Base case: empty list or single node\\n        if not head or not head.next:\\n            return head\\n        \\n        # Recursively reverse the rest of the list\\n        new_head = self.reverseList(head.next)\\n        \\n        # Reverse the pointer\\n        head.next.next = head\\n        head.next = None\\n        \\n        return new_head\\n            \"}, \"title\": \"Approach 2: Recursive Solution\", \"explanation\": \"\\nThe recursive approach leverages the call stack to reverse the list from the end backwards.\\n\\n### Key Idea\\nThe recursion goes deep until it reaches the last node, which becomes the new head. As the recursion unwinds, each node\'s next pointer is reversed.\\n\\n### Algorithm\\n1. Base case: if head is None or head.next is None, return head\\n2. Recursively call reverseList on head.next to get the new head\\n3. Set head.next.next = head (reverse the link)\\n4. Set head.next = None (break the old link)\\n5. Return the new head\\n\\n### How it works\\nThe recursion reaches the last node first, making it the new head. As we return from each recursive call, we reverse the pointer of the current node.\\n\\n### Example trace (for 1->2->3):\\n- Call reverseList(1): waits for reverseList(2)\\n- Call reverseList(2): waits for reverseList(3)\\n- Call reverseList(3): returns 3 (base case)\\n- Back in reverseList(2): set 3.next = 2, return 3\\n- Back in reverseList(1): set 2.next = 1, return 3\\n- Result: 3->2->1->None\\n\\n### Complexity\\n- Time: O(n) - visiting each node once\\n- Space: O(n) - recursion call stack depth\\n            \"}]}',NULL,'https://www.youtube.com/watch?v=N_Y4lZBEi0g','2025-12-10 07:25:48',2),(3,'{\"title\": \"Valid Parentheses\", \"overview\": \"\\nThe **Valid Parentheses** problem is a classic stack-based problem that tests your understanding of Last-In-First-Out (LIFO) data structures.\\n\\nThe challenge is to ensure that every opening bracket has a corresponding closing bracket of the same type, and they are properly nested.\\n\\n### Examples of valid strings:\\n- \\\"()\\\" - simple pair\\n- \\\"()[]{}\\\" - multiple types properly ordered\\n- \\\"{[]}\\\" - properly nested\\n\\n### Examples of invalid strings:\\n- \\\"(]\\\" - wrong closing bracket\\n- \\\"([)]\\\" - improper nesting\\n- \\\"(((\\\" - missing closing brackets\\n\\n### Key Insight:\\nThe most recently opened bracket must be closed first. This LIFO behavior makes a stack the perfect data structure.\\n        \", \"videoUrl\": \"https://www.youtube.com/watch?v=WTzjTskDFMg\", \"approaches\": [{\"id\": \"stack_approach\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    bool isValid(string s) {\\n        stack<char> st;\\n        unordered_map<char, char> mapping = {\\n            {\')\', \'(\'},\\n            {\'}\', \'{\'},\\n            {\']\', \'[\'}\\n        };\\n        \\n        for (char c : s) {\\n            if (mapping.count(c)) {\\n                // It\'s a closing bracket\\n                char topElement = st.empty() ? \'#\' : st.top();\\n                if (!st.empty()) st.pop();\\n                \\n                if (mapping[c] != topElement) {\\n                    return false;\\n                }\\n            } else {\\n                // It\'s an opening bracket\\n                st.push(c);\\n            }\\n        }\\n        \\n        return st.empty();\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public boolean isValid(String s) {\\n        Stack<Character> stack = new Stack<>();\\n        Map<Character, Character> mapping = new HashMap<>();\\n        mapping.put(\')\', \'(\');\\n        mapping.put(\'}\', \'{\');\\n        mapping.put(\']\', \'[\');\\n        \\n        for (char c : s.toCharArray()) {\\n            if (mapping.containsKey(c)) {\\n                // It\'s a closing bracket\\n                char topElement = stack.isEmpty() ? \'#\' : stack.pop();\\n                \\n                if (topElement != mapping.get(c)) {\\n                    return false;\\n                }\\n            } else {\\n                // It\'s an opening bracket\\n                stack.push(c);\\n            }\\n        }\\n        \\n        return stack.isEmpty();\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def isValid(self, s):\\n        stack = []\\n        mapping = {\')\': \'(\', \'}\': \'{\', \']\': \'[\'}\\n        \\n        for char in s:\\n            if char in mapping:\\n                # It\'s a closing bracket\\n                top_element = stack.pop() if stack else \'#\'\\n                \\n                if mapping[char] != top_element:\\n                    return False\\n            else:\\n                # It\'s an opening bracket\\n                stack.append(char)\\n        \\n        return not stack\\n            \"}, \"title\": \"Approach 1: Stack-Based Solution\", \"explanation\": \"\\nWe use a stack to keep track of opening brackets and match them with their corresponding closing brackets.\\n\\n### Algorithm\\n1. Create an empty stack\\n2. Create a mapping of closing to opening brackets: {\')\': \'(\', \'}\': \'{\', \']\': \'[\'}\\n3. Iterate through each character in the string:\\n   - If it\'s an opening bracket \'(\', \'{\', or \'[\', push it onto the stack\\n   - If it\'s a closing bracket:\\n     - Check if the stack is empty (invalid case)\\n     - Pop from the stack and check if it matches the expected opening bracket\\n     - If it doesn\'t match, return False\\n4. After processing all characters, check if the stack is empty\\n   - If empty: all brackets were properly matched (return True)\\n   - If not empty: some opening brackets weren\'t closed (return False)\\n\\n### Why it works\\nThe stack naturally handles the \\\"most recent opening bracket must be closed first\\\" requirement. When we encounter a closing bracket, we check against the most recently added opening bracket (top of stack).\\n\\n### Example Walkthrough: \\\"{[()]}\\\"\\n- Read \'{\': push to stack → [\'{\']]\\n- Read \'[\': push to stack → [\'{\', \'[\']\\n- Read \'(\': push to stack → [\'{\', \'[\', \'(\']\\n- Read \')\': matches \'(\' on top → pop → [\'{\', \'[\']\\n- Read \']\': matches \'[\' on top → pop → [\'{\']\\n- Read \'}\': matches \'{\' on top → pop → []\\n- Stack is empty → Valid!\\n\\n### Complexity\\n- Time: O(n) - single pass through the string\\n- Space: O(n) - worst case all opening brackets\\n            \"}, {\"id\": \"optimized_stack\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    bool isValid(string s) {\\n        stack<char> st;\\n        \\n        for (char c : s) {\\n            if (c == \'(\') {\\n                st.push(\')\');\\n            } else if (c == \'{\') {\\n                st.push(\'}\');\\n            } else if (c == \'[\') {\\n                st.push(\']\');\\n            } else if (st.empty() || st.top() != c) {\\n                return false;\\n            } else {\\n                st.pop();\\n            }\\n        }\\n        \\n        return st.empty();\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public boolean isValid(String s) {\\n        Stack<Character> stack = new Stack<>();\\n        \\n        for (char c : s.toCharArray()) {\\n            if (c == \'(\') {\\n                stack.push(\')\');\\n            } else if (c == \'{\') {\\n                stack.push(\'}\');\\n            } else if (c == \'[\') {\\n                stack.push(\']\');\\n            } else if (stack.isEmpty() || stack.pop() != c) {\\n                return false;\\n            }\\n        }\\n        \\n        return stack.isEmpty();\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def isValid(self, s):\\n        stack = []\\n        \\n        for char in s:\\n            if char == \'(\':\\n                stack.append(\')\')\\n            elif char == \'{\':\\n                stack.append(\'}\')\\n            elif char == \'[\':\\n                stack.append(\']\')\\n            elif not stack or stack.pop() != char:\\n                return False\\n        \\n        return len(stack) == 0\\n            \"}, \"title\": \"Approach 2: Optimized Stack (No HashMap)\", \"explanation\": \"\\nWe can optimize the solution slightly by avoiding the hash map lookup.\\n\\n### Key Idea\\nInstead of storing opening brackets in the stack, we can store their corresponding closing brackets. This way, when we encounter a closing bracket, we just compare it directly with the top of the stack.\\n\\n### Algorithm\\n1. Create an empty stack\\n2. For each character:\\n   - If \'(\', push \')\' onto stack\\n   - If \'{\', push \'}\' onto stack\\n   - If \'[\', push \']\' onto stack\\n   - If it\'s a closing bracket:\\n     - Check if stack is empty OR top doesn\'t match current char → return False\\n     - Otherwise pop from stack\\n3. Return whether stack is empty\\n\\n### Why this works\\nBy storing the expected closing bracket, we eliminate the need for a hash map lookup. The comparison becomes a simple equality check.\\n\\n### Example: \\\"([)]\\\"\\n- Read \'(\': push \')\' → [\')\']\\n- Read \'[\': push \']\' → [\')\', \']\']\\n- Read \')\': top is \']\', doesn\'t match → return False\\n\\n### Complexity\\n- Time: O(n) - single pass through the string\\n- Space: O(n) - stack space in worst case\\n            \"}]}',NULL,'https://www.youtube.com/watch?v=WTzjTskDFMg','2025-12-10 07:26:08',3),(4,'{\"title\": \"Merge Two Sorted Lists\", \"overview\": \"\\nThe **Merge Two Sorted Lists** problem is a fundamental linked list problem that combines two pre-sorted lists into a single sorted list.\\n\\nThis problem is similar to the merge step in merge sort and teaches important concepts about:\\n- Linked list manipulation\\n- Pointer management\\n- Maintaining sorted order while merging\\n\\n### Key Challenge:\\nWe need to traverse both lists simultaneously, comparing values and building a new merged list while preserving the sorted order.\\n\\n### Example:\\nInput: list1 = [1,2,4], list2 = [1,3,4]\\nOutput: [1,1,2,3,4,4]\\n\\n### Approaches:\\n- Iterative solution using a dummy node\\n- Recursive solution leveraging the call stack\\n        \", \"videoUrl\": \"https://www.youtube.com/watch?v=XIdigk956u0\", \"approaches\": [{\"id\": \"iterative_dummy\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {\\n        // Create a dummy node\\n        ListNode* dummy = new ListNode(0);\\n        ListNode* current = dummy;\\n        \\n        // Traverse both lists\\n        while (list1 != nullptr && list2 != nullptr) {\\n            if (list1->val <= list2->val) {\\n                current->next = list1;\\n                list1 = list1->next;\\n            } else {\\n                current->next = list2;\\n                list2 = list2->next;\\n            }\\n            current = current->next;\\n        }\\n        \\n        // Attach remaining nodes\\n        if (list1 != nullptr) {\\n            current->next = list1;\\n        } else {\\n            current->next = list2;\\n        }\\n        \\n        return dummy->next;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {\\n        // Create a dummy node\\n        ListNode dummy = new ListNode(0);\\n        ListNode current = dummy;\\n        \\n        // Traverse both lists\\n        while (list1 != null && list2 != null) {\\n            if (list1.val <= list2.val) {\\n                current.next = list1;\\n                list1 = list1.next;\\n            } else {\\n                current.next = list2;\\n                list2 = list2.next;\\n            }\\n            current = current.next;\\n        }\\n        \\n        // Attach remaining nodes\\n        if (list1 != null) {\\n            current.next = list1;\\n        } else {\\n            current.next = list2;\\n        }\\n        \\n        return dummy.next;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def mergeTwoLists(self, list1, list2):\\n        # Create a dummy node\\n        dummy = ListNode(0)\\n        current = dummy\\n        \\n        # Traverse both lists\\n        while list1 and list2:\\n            if list1.val <= list2.val:\\n                current.next = list1\\n                list1 = list1.next\\n            else:\\n                current.next = list2\\n                list2 = list2.next\\n            current = current.next\\n        \\n        # Attach remaining nodes\\n        if list1:\\n            current.next = list1\\n        else:\\n            current.next = list2\\n        \\n        return dummy.next\\n            \"}, \"title\": \"Approach 1: Iterative with Dummy Node\", \"explanation\": \"\\nWe use a dummy node to simplify the logic and avoid special cases for the head of the result list.\\n\\n### Algorithm\\n1. Create a dummy node to serve as the start of the merged list\\n2. Create a current pointer initialized to the dummy node\\n3. While both list1 and list2 are not None:\\n   - Compare list1.val and list2.val\\n   - Attach the smaller node to current.next\\n   - Move the pointer of the list from which we took the node\\n   - Move current to current.next\\n4. After the loop, one or both lists may be exhausted\\n5. Attach the remaining nodes from whichever list is not empty\\n6. Return dummy.next (the actual head of merged list)\\n\\n### Why use a dummy node?\\nWithout a dummy node, we\'d need special logic to handle the first node of the result. The dummy node lets us treat all nodes uniformly.\\n\\n### Example Walkthrough: list1=[1,2,4], list2=[1,3,4]\\n- dummy -> None, current = dummy\\n- Compare 1 and 1: take from list1 → dummy -> 1\\n- Compare 2 and 1: take 1 from list2 → dummy -> 1 -> 1\\n- Compare 2 and 3: take 2 from list1 → dummy -> 1 -> 1 -> 2\\n- Compare 4 and 3: take 3 from list2 → dummy -> 1 -> 1 -> 2 -> 3\\n- Compare 4 and 4: take from list1 → dummy -> 1 -> 1 -> 2 -> 3 -> 4\\n- list1 empty, attach remaining list2 → dummy -> 1 -> 1 -> 2 -> 3 -> 4 -> 4\\n\\n### Complexity\\n- Time: O(n + m) where n and m are the lengths of the two lists\\n- Space: O(1) - only using pointers, not creating new nodes\\n            \"}, {\"id\": \"recursive\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {\\n        // Base cases\\n        if (list1 == nullptr) {\\n            return list2;\\n        }\\n        if (list2 == nullptr) {\\n            return list1;\\n        }\\n        \\n        // Recursive case\\n        if (list1->val <= list2->val) {\\n            list1->next = mergeTwoLists(list1->next, list2);\\n            return list1;\\n        } else {\\n            list2->next = mergeTwoLists(list1, list2->next);\\n            return list2;\\n        }\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {\\n        // Base cases\\n        if (list1 == null) {\\n            return list2;\\n        }\\n        if (list2 == null) {\\n            return list1;\\n        }\\n        \\n        // Recursive case\\n        if (list1.val <= list2.val) {\\n            list1.next = mergeTwoLists(list1.next, list2);\\n            return list1;\\n        } else {\\n            list2.next = mergeTwoLists(list1, list2.next);\\n            return list2;\\n        }\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def mergeTwoLists(self, list1, list2):\\n        # Base cases\\n        if not list1:\\n            return list2\\n        if not list2:\\n            return list1\\n        \\n        # Recursive case\\n        if list1.val <= list2.val:\\n            list1.next = self.mergeTwoLists(list1.next, list2)\\n            return list1\\n        else:\\n            list2.next = self.mergeTwoLists(list1, list2.next)\\n            return list2\\n            \"}, \"title\": \"Approach 2: Recursive Solution\", \"explanation\": \"\\nThe recursive approach elegantly solves the problem by breaking it down into smaller subproblems.\\n\\n### Key Idea\\nAt each step, we choose the smaller head and recursively merge the rest. The base cases handle when one or both lists are empty.\\n\\n### Algorithm\\n1. Base cases:\\n   - If list1 is None, return list2\\n   - If list2 is None, return list1\\n2. Recursive case:\\n   - If list1.val <= list2.val:\\n     - Set list1.next = mergeTwoLists(list1.next, list2)\\n     - Return list1\\n   - Otherwise:\\n     - Set list2.next = mergeTwoLists(list1, list2.next)\\n     - Return list2\\n\\n### How it works\\nEach recursive call selects the smaller head and merges it with the result of merging the remaining lists. The recursion naturally builds the merged list from smallest to largest.\\n\\n### Example Trace: list1=[1,4], list2=[2,3]\\n- mergeTwoLists([1,4], [2,3])\\n  - 1 <= 2, so take 1\\n  - 1.next = mergeTwoLists([4], [2,3])\\n    - 4 > 2, so take 2\\n    - 2.next = mergeTwoLists([4], [3])\\n      - 4 > 3, so take 3\\n      - 3.next = mergeTwoLists([4], None)\\n        - Returns [4]\\n      - Returns [3,4]\\n    - Returns [2,3,4]\\n  - Returns [1,2,3,4]\\n\\n### Complexity\\n- Time: O(n + m) - each node is visited once\\n- Space: O(n + m) - recursion call stack depth\\n            \"}]}',NULL,'https://www.youtube.com/watch?v=XIdigk956u0','2025-12-10 07:26:44',4),(5,'{\"title\": \"Best Time to Buy and Sell Stock\", \"overview\": \"\\nThe **Best Time to Buy and Sell Stock** problem is a classic dynamic programming and greedy algorithm problem that teaches important concepts about optimization.\\n\\n### Problem Essence:\\nWe need to find the maximum difference between two elements in the array where the larger element comes after the smaller one. This represents buying at a low price and selling at a higher price later.\\n\\n### Key Insights:\\n- We must buy before we sell (can\'t go back in time)\\n- We want to buy at the lowest price and sell at the highest price after that\\n- We need to track both the minimum price so far and the maximum profit\\n\\n### Examples:\\nInput: [7,1,5,3,6,4]\\n- Buy on day 2 (price = 1), sell on day 5 (price = 6), profit = 6-1 = 5\\n\\nInput: [7,6,4,3,1]\\n- No profitable transaction possible, return 0\\n\\n### Approaches:\\n- Brute force checking all pairs\\n- One-pass greedy solution (optimal)\\n        \", \"videoUrl\": \"https://www.youtube.com/watch?v=1pkOgXD63yU\", \"approaches\": [{\"id\": \"brute_force\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int maxProfit(vector<int>& prices) {\\n        int maxProfit = 0;\\n        \\n        for (int i = 0; i < prices.size(); i++) {\\n            for (int j = i + 1; j < prices.size(); j++) {\\n                int profit = prices[j] - prices[i];\\n                maxProfit = max(maxProfit, profit);\\n            }\\n        }\\n        \\n        return maxProfit;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public int maxProfit(int[] prices) {\\n        int maxProfit = 0;\\n        \\n        for (int i = 0; i < prices.length; i++) {\\n            for (int j = i + 1; j < prices.length; j++) {\\n                int profit = prices[j] - prices[i];\\n                maxProfit = Math.max(maxProfit, profit);\\n            }\\n        }\\n        \\n        return maxProfit;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def maxProfit(self, prices):\\n        max_profit = 0\\n        \\n        for i in range(len(prices)):\\n            for j in range(i + 1, len(prices)):\\n                profit = prices[j] - prices[i]\\n                max_profit = max(max_profit, profit)\\n        \\n        return max_profit\\n            \"}, \"title\": \"Approach 1: Brute Force\", \"explanation\": \"\\nThe straightforward approach is to try every possible buy-sell pair and find the maximum profit.\\n\\n### Algorithm\\n1. Initialize maxProfit = 0\\n2. Use two nested loops:\\n   - Outer loop: iterate through each day i as the buy day\\n   - Inner loop: iterate through each day j > i as the sell day\\n   - Calculate profit = prices[j] - prices[i]\\n   - Update maxProfit if this profit is greater\\n3. Return maxProfit\\n\\n### Why it works\\nBy checking every possible combination, we\'re guaranteed to find the maximum profit if one exists.\\n\\n### Example: [7,1,5,3,6,4]\\n- Buy at 7: sell at 1→-6, 5→-2, 3→-4, 6→-1, 4→-3\\n- Buy at 1: sell at 5→4, 3→2, 6→5, 4→3 (max so far: 5)\\n- Buy at 5: sell at 3→-2, 6→1, 4→-1\\n- Buy at 3: sell at 6→3, 4→1\\n- Buy at 6: sell at 4→-2\\n- Maximum profit: 5\\n\\n### Complexity\\n- Time: O(n²) - nested loops checking all pairs\\n- Space: O(1) - only storing variables\\n\\n### Note\\nThis approach works but is inefficient for large inputs. It will likely exceed time limits on larger test cases.\\n            \"}, {\"id\": \"one_pass_optimal\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int maxProfit(vector<int>& prices) {\\n        int minPrice = INT_MAX;\\n        int maxProfit = 0;\\n        \\n        for (int price : prices) {\\n            // Update minimum price if we found a lower one\\n            if (price < minPrice) {\\n                minPrice = price;\\n            } \\n            // Calculate profit if we sell at current price\\n            else if (price - minPrice > maxProfit) {\\n                maxProfit = price - minPrice;\\n            }\\n        }\\n        \\n        return maxProfit;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public int maxProfit(int[] prices) {\\n        int minPrice = Integer.MAX_VALUE;\\n        int maxProfit = 0;\\n        \\n        for (int price : prices) {\\n            // Update minimum price if we found a lower one\\n            if (price < minPrice) {\\n                minPrice = price;\\n            } \\n            // Calculate profit if we sell at current price\\n            else if (price - minPrice > maxProfit) {\\n                maxProfit = price - minPrice;\\n            }\\n        }\\n        \\n        return maxProfit;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def maxProfit(self, prices):\\n        min_price = float(\'inf\')\\n        max_profit = 0\\n        \\n        for price in prices:\\n            # Update minimum price if we found a lower one\\n            if price < min_price:\\n                min_price = price\\n            # Calculate profit if we sell at current price\\n            elif price - min_price > max_profit:\\n                max_profit = price - min_price\\n        \\n        return max_profit\\n            \"}, \"title\": \"Approach 2: One Pass (Optimal)\", \"explanation\": \"\\nWe can solve this problem optimally in a single pass by tracking the minimum price seen so far and calculating potential profit at each step.\\n\\n### Key Idea\\nAs we scan through prices:\\n- Keep track of the minimum price encountered so far (best buy price)\\n- For each price, calculate what profit we\'d make if we sold at this price\\n- Update the maximum profit if this profit is better\\n\\n### Algorithm\\n1. Initialize minPrice = infinity (or first price)\\n2. Initialize maxProfit = 0\\n3. For each price in prices:\\n   - If price < minPrice, update minPrice (found a better buy day)\\n   - Calculate currentProfit = price - minPrice\\n   - If currentProfit > maxProfit, update maxProfit\\n4. Return maxProfit\\n\\n### Why it works\\nAt each day, we know the best price to buy before that day (minPrice). We calculate the profit if we sold today and keep track of the best profit we\'ve seen.\\n\\n### Example Walkthrough: [7,1,5,3,6,4]\\n- Day 0 (price=7): minPrice=7, profit=0, maxProfit=0\\n- Day 1 (price=1): minPrice=1, profit=0, maxProfit=0\\n- Day 2 (price=5): minPrice=1, profit=4, maxProfit=4\\n- Day 3 (price=3): minPrice=1, profit=2, maxProfit=4\\n- Day 4 (price=6): minPrice=1, profit=5, maxProfit=5\\n- Day 5 (price=4): minPrice=1, profit=3, maxProfit=5\\n- Result: 5\\n\\n### Visual Representation:\\n```\\nPrices: [7, 1, 5, 3, 6, 4]\\n         ↓  ↓           ↓\\n        Buy here    Sell here\\n         (min=1)    (profit=5)\\n```\\n\\n### Complexity\\n- Time: O(n) - single pass through the array\\n- Space: O(1) - only using two variables\\n            \"}]}',NULL,'https://www.youtube.com/watch?v=1pkOgXD63yU','2025-12-10 07:27:15',5),(6,'{\"title\": \"Maximum Subarray\", \"overview\": \"\\nThe **Maximum Subarray** problem, also known as the maximum subarray sum problem, is a classic problem in computer science that demonstrates the power of dynamic programming and greedy algorithms.\\n\\n### Problem Essence:\\nFind a contiguous subarray within a one-dimensional array of numbers that has the largest sum.\\n\\n### Key Insight:\\nAt any position, we face a choice: either extend the existing subarray by including the current element, or start a new subarray from the current element. The decision depends on whether adding to the existing sum helps or hurts.\\n\\n### Examples:\\nInput: [-2,1,-3,4,-1,2,1,-5,4]\\n- The subarray [4,-1,2,1] has the largest sum = 6\\n\\nInput: [1]\\n- Only one element, so maximum sum = 1\\n\\nInput: [5,4,-1,7,8]\\n- The entire array is the maximum subarray with sum = 23\\n\\n### Approaches:\\n- Brute force checking all subarrays\\n- Kadane\'s Algorithm (optimal O(n) solution)\\n- Divide and Conquer approach\\n        \", \"videoUrl\": \"https://www.youtube.com/watch?v=5WZl3MMT0Eg\", \"approaches\": [{\"id\": \"kadane_algorithm\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int maxSubArray(vector<int>& nums) {\\n        int currentSum = nums[0];\\n        int maxSum = nums[0];\\n        \\n        for (int i = 1; i < nums.size(); i++) {\\n            // Either extend existing subarray or start new one\\n            currentSum = max(nums[i], currentSum + nums[i]);\\n            // Update maximum sum found so far\\n            maxSum = max(maxSum, currentSum);\\n        }\\n        \\n        return maxSum;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public int maxSubArray(int[] nums) {\\n        int currentSum = nums[0];\\n        int maxSum = nums[0];\\n        \\n        for (int i = 1; i < nums.length; i++) {\\n            // Either extend existing subarray or start new one\\n            currentSum = Math.max(nums[i], currentSum + nums[i]);\\n            // Update maximum sum found so far\\n            maxSum = Math.max(maxSum, currentSum);\\n        }\\n        \\n        return maxSum;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def maxSubArray(self, nums):\\n        current_sum = max_sum = nums[0]\\n        \\n        for i in range(1, len(nums)):\\n            # Either extend existing subarray or start new one\\n            current_sum = max(nums[i], current_sum + nums[i])\\n            # Update maximum sum found so far\\n            max_sum = max(max_sum, current_sum)\\n        \\n        return max_sum\\n            \"}, \"title\": \"Approach 1: Kadane\'s Algorithm (Optimal)\", \"explanation\": \"\\nKadane\'s Algorithm is an elegant dynamic programming solution that solves this problem in linear time.\\n\\n### Core Idea\\nAt each position, we maintain:\\n- `current_sum`: maximum sum of subarray ending at current position\\n- `max_sum`: maximum sum found so far\\n\\nThe key decision at each element: should we extend the previous subarray or start fresh?\\n\\n### Algorithm\\n1. Initialize current_sum = nums[0] and max_sum = nums[0]\\n2. For each element from index 1 to end:\\n   - Update current_sum = max(nums[i], current_sum + nums[i])\\n     - This decides: start new subarray OR extend existing one\\n   - Update max_sum = max(max_sum, current_sum)\\n3. Return max_sum\\n\\n### Why it works\\n- If current_sum becomes negative, it will only decrease future sums\\n- Starting fresh from the next positive element is better\\n- We continuously track the best sum we\'ve seen\\n\\n### Example Walkthrough: [-2,1,-3,4,-1,2,1,-5,4]\\n```\\nIndex:  0   1   2   3   4   5   6   7   8\\nNums:  -2   1  -3   4  -1   2   1  -5   4\\nCurr:  -2   1  -2   4   3   5   6   1   5\\nMax:   -2   1   1   4   4   5   6   6   6\\n```\\n\\n- i=0: curr=-2, max=-2\\n- i=1: curr=max(1, -2+1)=1, max=1\\n- i=2: curr=max(-3, 1-3)=-2, max=1\\n- i=3: curr=max(4, -2+4)=4, max=4\\n- i=4: curr=max(-1, 4-1)=3, max=4\\n- i=5: curr=max(2, 3+2)=5, max=5\\n- i=6: curr=max(1, 5+1)=6, max=6\\n- i=7: curr=max(-5, 6-5)=1, max=6\\n- i=8: curr=max(4, 1+4)=5, max=6\\n\\nResult: 6 (subarray [4,-1,2,1])\\n\\n### Complexity\\n- Time: O(n) - single pass through array\\n- Space: O(1) - only two variables\\n            \"}, {\"id\": \"divide_conquer\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int maxSubArray(vector<int>& nums) {\\n        return divideConquer(nums, 0, nums.size() - 1);\\n    }\\n    \\nprivate:\\n    int divideConquer(vector<int>& nums, int left, int right) {\\n        if (left == right) {\\n            return nums[left];\\n        }\\n        \\n        int mid = (left + right) / 2;\\n        \\n        int leftMax = divideConquer(nums, left, mid);\\n        int rightMax = divideConquer(nums, mid + 1, right);\\n        int crossMax = crossSum(nums, left, right, mid);\\n        \\n        return max({leftMax, rightMax, crossMax});\\n    }\\n    \\n    int crossSum(vector<int>& nums, int left, int right, int mid) {\\n        if (left == right) {\\n            return nums[left];\\n        }\\n        \\n        int leftSum = INT_MIN;\\n        int currentSum = 0;\\n        for (int i = mid; i >= left; i--) {\\n            currentSum += nums[i];\\n            leftSum = max(leftSum, currentSum);\\n        }\\n        \\n        int rightSum = INT_MIN;\\n        currentSum = 0;\\n        for (int i = mid + 1; i <= right; i++) {\\n            currentSum += nums[i];\\n            rightSum = max(rightSum, currentSum);\\n        }\\n        \\n        return leftSum + rightSum;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public int maxSubArray(int[] nums) {\\n        return divideConquer(nums, 0, nums.length - 1);\\n    }\\n    \\n    private int divideConquer(int[] nums, int left, int right) {\\n        if (left == right) {\\n            return nums[left];\\n        }\\n        \\n        int mid = (left + right) / 2;\\n        \\n        int leftMax = divideConquer(nums, left, mid);\\n        int rightMax = divideConquer(nums, mid + 1, right);\\n        int crossMax = crossSum(nums, left, right, mid);\\n        \\n        return Math.max(Math.max(leftMax, rightMax), crossMax);\\n    }\\n    \\n    private int crossSum(int[] nums, int left, int right, int mid) {\\n        if (left == right) {\\n            return nums[left];\\n        }\\n        \\n        int leftSum = Integer.MIN_VALUE;\\n        int currentSum = 0;\\n        for (int i = mid; i >= left; i--) {\\n            currentSum += nums[i];\\n            leftSum = Math.max(leftSum, currentSum);\\n        }\\n        \\n        int rightSum = Integer.MIN_VALUE;\\n        currentSum = 0;\\n        for (int i = mid + 1; i <= right; i++) {\\n            currentSum += nums[i];\\n            rightSum = Math.max(rightSum, currentSum);\\n        }\\n        \\n        return leftSum + rightSum;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def maxSubArray(self, nums):\\n        return self.divideConquer(nums, 0, len(nums) - 1)\\n    \\n    def divideConquer(self, nums, left, right):\\n        if left == right:\\n            return nums[left]\\n        \\n        mid = (left + right) // 2\\n        \\n        # Maximum in left half\\n        left_max = self.divideConquer(nums, left, mid)\\n        # Maximum in right half\\n        right_max = self.divideConquer(nums, mid + 1, right)\\n        # Maximum crossing middle\\n        cross_max = self.crossSum(nums, left, right, mid)\\n        \\n        return max(left_max, right_max, cross_max)\\n    \\n    def crossSum(self, nums, left, right, mid):\\n        if left == right:\\n            return nums[left]\\n        \\n        # Max sum extending left from mid\\n        left_sum = float(\'-inf\')\\n        current_sum = 0\\n        for i in range(mid, left - 1, -1):\\n            current_sum += nums[i]\\n            left_sum = max(left_sum, current_sum)\\n        \\n        # Max sum extending right from mid+1\\n        right_sum = float(\'-inf\')\\n        current_sum = 0\\n        for i in range(mid + 1, right + 1):\\n            current_sum += nums[i]\\n            right_sum = max(right_sum, current_sum)\\n        \\n        return left_sum + right_sum\\n            \"}, \"title\": \"Approach 2: Divide and Conquer\", \"explanation\": \"\\nThe divide and conquer approach splits the array and considers three cases for the maximum subarray.\\n\\n### Key Idea\\nThe maximum subarray can be in three places:\\n1. Entirely in the left half\\n2. Entirely in the right half\\n3. Crosses the middle (spans both halves)\\n\\nWe recursively find the maximum for each case and return the largest.\\n\\n### Algorithm\\n1. Base case: if array has one element, return it\\n2. Find the middle index\\n3. Recursively find max subarray in left half\\n4. Recursively find max subarray in right half\\n5. Find max subarray crossing the middle:\\n   - Find max sum extending left from middle\\n   - Find max sum extending right from middle\\n   - Sum them together\\n6. Return the maximum of the three values\\n\\n### Finding Cross Sum\\nStarting from the middle:\\n- Extend left: keep track of best sum going left\\n- Extend right: keep track of best sum going right\\n- Total cross sum = left_sum + right_sum\\n\\n### Example: [-2,1,-3,4,-1,2,1,-5,4]\\n- Split into [-2,1,-3,4] and [-1,2,1,-5,4]\\n- Continue splitting recursively\\n- At each level, compare left max, right max, and cross max\\n- Combine results back up\\n\\n### Complexity\\n- Time: O(n log n) - dividing array takes log n levels, each level processes n elements\\n- Space: O(log n) - recursion stack depth\\n            \"}]}',NULL,'https://www.youtube.com/watch?v=5WZl3MMT0Eg','2025-12-10 07:27:31',6),(7,'{\"title\": \"Climbing Stairs\", \"overview\": \"\\nThe **Climbing Stairs** problem is a fundamental dynamic programming problem that introduces the concept of breaking down problems into overlapping subproblems.\\n\\n### Problem Essence:\\nCount the number of distinct ways to reach the top of a staircase with n steps, where you can climb 1 or 2 steps at a time.\\n\\n### Key Insight:\\nTo reach step n, you can arrive from:\\n- Step n-1 (by taking 1 step)\\n- Step n-2 (by taking 2 steps)\\n\\nTherefore: ways(n) = ways(n-1) + ways(n-2)\\n\\nThis is the Fibonacci sequence!\\n\\n### Examples:\\nn = 2: [1,1] and [2] → 2 ways\\nn = 3: [1,1,1], [1,2], [2,1] → 3 ways\\nn = 4: [1,1,1,1], [1,1,2], [1,2,1], [2,1,1], [2,2] → 5 ways\\n\\n### Approaches:\\n- Recursive (with and without memoization)\\n- Dynamic Programming (bottom-up)\\n- Space-optimized DP (Fibonacci approach)\\n        \", \"videoUrl\": \"https://www.youtube.com/watch?v=Y0lT9Fck7qI\", \"approaches\": [{\"id\": \"recursive_memoization\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int climbStairs(int n) {\\n        unordered_map<int, int> memo;\\n        return climb(n, memo);\\n    }\\n    \\nprivate:\\n    int climb(int n, unordered_map<int, int>& memo) {\\n        // Base cases\\n        if (n <= 2) {\\n            return n;\\n        }\\n        \\n        // Check if already computed\\n        if (memo.count(n)) {\\n            return memo[n];\\n        }\\n        \\n        // Compute and store in memo\\n        memo[n] = climb(n - 1, memo) + climb(n - 2, memo);\\n        return memo[n];\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    private Map<Integer, Integer> memo = new HashMap<>();\\n    \\n    public int climbStairs(int n) {\\n        return climb(n);\\n    }\\n    \\n    private int climb(int n) {\\n        // Base cases\\n        if (n <= 2) {\\n            return n;\\n        }\\n        \\n        // Check if already computed\\n        if (memo.containsKey(n)) {\\n            return memo.get(n);\\n        }\\n        \\n        // Compute and store in memo\\n        int result = climb(n - 1) + climb(n - 2);\\n        memo.put(n, result);\\n        return result;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def climbStairs(self, n):\\n        memo = {}\\n        return self.climb(n, memo)\\n    \\n    def climb(self, n, memo):\\n        # Base cases\\n        if n <= 2:\\n            return n\\n        \\n        # Check if already computed\\n        if n in memo:\\n            return memo[n]\\n        \\n        # Compute and store in memo\\n        memo[n] = self.climb(n - 1, memo) + self.climb(n - 2, memo)\\n        return memo[n]\\n            \"}, \"title\": \"Approach 1: Recursion with Memoization\", \"explanation\": \"\\nThe recursive approach directly models the problem definition, enhanced with memoization to avoid redundant calculations.\\n\\n### Recursive Relation\\n- Base cases: ways(1) = 1, ways(2) = 2\\n- Recursive case: ways(n) = ways(n-1) + ways(n-2)\\n\\n### Algorithm\\n1. Create a memoization dictionary/array to store computed results\\n2. Define a recursive function:\\n   - If n <= 2, return n\\n   - If result is already computed, return it from memo\\n   - Otherwise: result = recursive_call(n-1) + recursive_call(n-2)\\n   - Store result in memo and return it\\n3. Call the function with n\\n\\n### Why Memoization?\\nWithout memoization, we\'d recalculate the same values many times:\\n```\\nclimb(5)\\n├── climb(4)\\n│   ├── climb(3)\\n│   │   ├── climb(2)\\n│   │   └── climb(1)\\n│   └── climb(2)  ← recalculated\\n└── climb(3)      ← recalculated\\n    ├── climb(2)  ← recalculated\\n    └── climb(1)  ← recalculated\\n```\\n\\nWith memoization, each value is calculated only once.\\n\\n### Example: n = 5\\n- climb(5) = climb(4) + climb(3)\\n- climb(4) = climb(3) + climb(2) = 3 + 2 = 5\\n- climb(3) = climb(2) + climb(1) = 2 + 1 = 3\\n- climb(2) = 2 (base case)\\n- climb(1) = 1 (base case)\\n- Result: 5 + 3 = 8\\n\\n### Complexity\\n- Time: O(n) - each subproblem computed once\\n- Space: O(n) - recursion stack + memoization array\\n            \"}, {\"id\": \"dp_bottom_up\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int climbStairs(int n) {\\n        if (n <= 2) {\\n            return n;\\n        }\\n        \\n        // Create DP array\\n        vector<int> dp(n + 1);\\n        dp[1] = 1;\\n        dp[2] = 2;\\n        \\n        // Fill the DP array\\n        for (int i = 3; i <= n; i++) {\\n            dp[i] = dp[i - 1] + dp[i - 2];\\n        }\\n        \\n        return dp[n];\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public int climbStairs(int n) {\\n        if (n <= 2) {\\n            return n;\\n        }\\n        \\n        // Create DP array\\n        int[] dp = new int[n + 1];\\n        dp[1] = 1;\\n        dp[2] = 2;\\n        \\n        // Fill the DP array\\n        for (int i = 3; i <= n; i++) {\\n            dp[i] = dp[i - 1] + dp[i - 2];\\n        }\\n        \\n        return dp[n];\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def climbStairs(self, n):\\n        if n <= 2:\\n            return n\\n        \\n        # Create DP array\\n        dp = [0] * (n + 1)\\n        dp[1] = 1\\n        dp[2] = 2\\n        \\n        # Fill the DP array\\n        for i in range(3, n + 1):\\n            dp[i] = dp[i - 1] + dp[i - 2]\\n        \\n        return dp[n]\\n            \"}, \"title\": \"Approach 2: Dynamic Programming (Bottom-Up)\", \"explanation\": \"\\nThe bottom-up DP approach builds the solution iteratively from the base cases up to n.\\n\\n### Key Idea\\nInstead of recursing from n down to base cases, we start from base cases and build up to n.\\n\\n### Algorithm\\n1. Create a DP array of size n+1\\n2. Initialize base cases: dp[1] = 1, dp[2] = 2\\n3. For i from 3 to n:\\n   - dp[i] = dp[i-1] + dp[i-2]\\n4. Return dp[n]\\n\\n### Why it works\\nWe\'re computing each step\'s answer based on previously computed steps. By the time we reach step n, all necessary subproblems are already solved.\\n\\n### Example: n = 5\\n```\\ndp[1] = 1\\ndp[2] = 2\\ndp[3] = dp[2] + dp[1] = 2 + 1 = 3\\ndp[4] = dp[3] + dp[2] = 3 + 2 = 5\\ndp[5] = dp[4] + dp[3] = 5 + 3 = 8\\n```\\n\\n### Visualization:\\n```\\nStep:  1  2  3  4  5\\nWays:  1  2  3  5  8\\n       ↑  ↑  ↑  ↑  ↑\\n       └──┴──┘  │  │\\n          └─────┴──┘\\n```\\n\\n### Complexity\\n- Time: O(n) - single loop from 3 to n\\n- Space: O(n) - DP array of size n+1\\n            \"}, {\"id\": \"space_optimized\", \"code\": {\"cpp\": \"\\nclass Solution {\\npublic:\\n    int climbStairs(int n) {\\n        if (n <= 2) {\\n            return n;\\n        }\\n        \\n        int prev2 = 1;  // Ways to reach step 1\\n        int prev1 = 2;  // Ways to reach step 2\\n        \\n        for (int i = 3; i <= n; i++) {\\n            int current = prev1 + prev2;\\n            prev2 = prev1;\\n            prev1 = current;\\n        }\\n        \\n        return prev1;\\n    }\\n};\\n            \", \"java\": \"\\nclass Solution {\\n    public int climbStairs(int n) {\\n        if (n <= 2) {\\n            return n;\\n        }\\n        \\n        int prev2 = 1;  // Ways to reach step 1\\n        int prev1 = 2;  // Ways to reach step 2\\n        \\n        for (int i = 3; i <= n; i++) {\\n            int current = prev1 + prev2;\\n            prev2 = prev1;\\n            prev1 = current;\\n        }\\n        \\n        return prev1;\\n    }\\n}\\n            \", \"python\": \"\\nclass Solution:\\n    def climbStairs(self, n):\\n        if n <= 2:\\n            return n\\n        \\n        prev2 = 1  # Ways to reach step 1\\n        prev1 = 2  # Ways to reach step 2\\n        \\n        for i in range(3, n + 1):\\n            current = prev1 + prev2\\n            prev2 = prev1\\n            prev1 = current\\n        \\n        return prev1\\n            \"}, \"title\": \"Approach 3: Space-Optimized DP\", \"explanation\": \"\\nSince we only need the previous two values to compute the current value, we can optimize space to O(1).\\n\\n### Key Observation\\nAt any point, we only need:\\n- The number of ways to reach the previous step (n-1)\\n- The number of ways to reach the step before that (n-2)\\n\\nWe don\'t need to store the entire array!\\n\\n### Algorithm\\n1. Handle base cases: if n <= 2, return n\\n2. Initialize two variables: prev2 = 1 (for step 1), prev1 = 2 (for step 2)\\n3. For i from 3 to n:\\n   - current = prev1 + prev2\\n   - Update: prev2 = prev1, prev1 = current\\n4. Return prev1\\n\\n### Example: n = 5\\n```\\nInitial: prev2=1, prev1=2\\ni=3: current=3, prev2=2, prev1=3\\ni=4: current=5, prev2=3, prev1=5\\ni=5: current=8, prev2=5, prev1=8\\nResult: 8\\n```\\n\\n### Visual Representation:\\n```\\nStep:        1    2    3    4    5\\n            prev2 prev1\\n                 prev2 prev1\\n                      prev2 prev1\\n                           prev2 prev1\\n```\\n\\n### Complexity\\n- Time: O(n) - single loop from 3 to n\\n- Space: O(1) - only using two variables\\n            \"}]}',NULL,'https://www.youtube.com/watch?v=Y0lT9Fck7qI','2025-12-10 07:27:49',7);
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hint`
--

DROP TABLE IF EXISTS `hint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `order` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  CONSTRAINT `hint_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hint`
--

LOCK TABLES `hint` WRITE;
/*!40000 ALTER TABLE `hint` DISABLE KEYS */;
INSERT INTO `hint` VALUES (1,'Try using a hash map to store the numbers you\'ve seen so far.',1,'2025-12-10 07:25:27',1),(2,'For each number, check if target - current number exists in your hash map.',2,'2025-12-10 07:25:27',1),(3,'The time complexity can be reduced to O(n) with this approach.',3,'2025-12-10 07:25:27',1),(4,'Think about using three pointers: previous, current, and next.',1,'2025-12-10 07:25:48',2),(5,'You need to change the direction of the \'next\' pointers as you traverse the list.',2,'2025-12-10 07:25:48',2),(6,'Don\'t forget to handle the edge case of an empty list or a single node.',3,'2025-12-10 07:25:48',2),(7,'Consider solving this both iteratively and recursively for practice.',4,'2025-12-10 07:25:48',2),(8,'A stack is the perfect data structure for this problem.',1,'2025-12-10 07:26:08',3),(9,'When you encounter an opening bracket, push it onto the stack.',2,'2025-12-10 07:26:08',3),(10,'When you encounter a closing bracket, check if it matches the top of the stack.',3,'2025-12-10 07:26:08',3),(11,'At the end, the stack should be empty for the string to be valid.',4,'2025-12-10 07:26:08',3),(12,'Use a dummy node to simplify edge cases and make the code cleaner.',1,'2025-12-10 07:26:45',4),(13,'Compare the values at the current positions of both lists and attach the smaller one.',2,'2025-12-10 07:26:45',4),(14,'Don\'t forget to attach any remaining nodes from either list after one becomes empty.',3,'2025-12-10 07:26:45',4),(15,'This problem can also be solved recursively - think about the base case and recursive relation.',4,'2025-12-10 07:26:45',4),(16,'Think about tracking the minimum price seen so far as you iterate through the array.',1,'2025-12-10 07:27:15',5),(17,'For each price, calculate the profit if you sold at that price having bought at the minimum price.',2,'2025-12-10 07:27:15',5),(18,'Keep track of the maximum profit seen so far.',3,'2025-12-10 07:27:15',5),(19,'You can solve this in a single pass through the array with O(1) space.',4,'2025-12-10 07:27:15',5),(20,'Try using Kadane\'s Algorithm - it\'s specifically designed for this problem.',1,'2025-12-10 07:27:31',6),(21,'At each position, decide whether to extend the current subarray or start a new one.',2,'2025-12-10 07:27:31',6),(22,'Keep track of the current sum and the maximum sum seen so far.',3,'2025-12-10 07:27:31',6),(23,'If the current sum becomes negative, it\'s better to start fresh from the next element.',4,'2025-12-10 07:27:31',6),(24,'To reach step n, you must have come from either step n-1 or step n-2.',1,'2025-12-10 07:27:49',7),(25,'This is actually a Fibonacci sequence problem in disguise!',2,'2025-12-10 07:27:49',7),(26,'Think about how many ways you can reach the first few steps: 1 step (1 way), 2 steps (2 ways), 3 steps (3 ways)...',3,'2025-12-10 07:27:49',7),(27,'You can solve this using dynamic programming, starting from the base cases.',4,'2025-12-10 07:27:49',7);
/*!40000 ALTER TABLE `hint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `compiler_language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compiler_language_id` (`compiler_language_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,71,'python','2025-12-10 07:25:27'),(2,62,'java','2025-12-10 07:25:27'),(3,54,'cpp','2025-12-10 07:25:27');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `difficulty` enum('Easy','Medium','Hard') NOT NULL,
  `xp_reward` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,'Two Sum','Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.\n\nYou may assume that each input would have exactly one solution, and you may not use the same element twice.\n\nYou can return the answer in any order.','Easy',0,'2025-12-10 07:25:27'),(2,'Reverse Linked List','Given the head of a singly linked list, reverse the list, and return the reversed list.\n\nA singly linked list is a data structure where each node contains a value and a pointer to the next node in the sequence.','Easy',0,'2025-12-10 07:25:48'),(3,'Valid Parentheses','Given a string s containing just the characters \'(\', \')\', \'{\', \'}\', \'[\' and \']\', determine if the input string is valid.\n\nAn input string is valid if:\n1. Open brackets must be closed by the same type of brackets.\n2. Open brackets must be closed in the correct order.\n3. Every close bracket has a corresponding open bracket of the same type.','Easy',0,'2025-12-10 07:26:08'),(4,'Merge Two Sorted Lists','You are given the heads of two sorted linked lists list1 and list2.\n\nMerge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.\n\nReturn the head of the merged linked list.','Easy',0,'2025-12-10 07:26:44'),(5,'Best Time to Buy and Sell Stock','You are given an array prices where prices[i] is the price of a given stock on the ith day.\n\nYou want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.\n\nReturn the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.','Easy',0,'2025-12-10 07:27:15'),(6,'Maximum Subarray','Given an integer array nums, find the subarray with the largest sum, and return its sum.\n\nA subarray is a contiguous non-empty sequence of elements within an array.','Medium',0,'2025-12-10 07:27:31'),(7,'Climbing Stairs','You are climbing a staircase. It takes n steps to reach the top.\n\nEach time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?\n\nNote: Given n will be a positive integer.','Easy',0,'2025-12-10 07:27:49');
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_tag`
--

DROP TABLE IF EXISTS `problem_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `tag_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_problem_tag` (`problem_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `problem_tag_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`),
  CONSTRAINT `problem_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_tag`
--

LOCK TABLES `problem_tag` WRITE;
/*!40000 ALTER TABLE `problem_tag` DISABLE KEYS */;
INSERT INTO `problem_tag` VALUES (1,1,1,'2025-12-10 07:25:27'),(2,1,2,'2025-12-10 07:25:27'),(3,1,3,'2025-12-10 07:25:27'),(4,1,4,'2025-12-10 07:25:27'),(5,2,5,'2025-12-10 07:25:48'),(6,2,6,'2025-12-10 07:25:48'),(7,2,7,'2025-12-10 07:25:48'),(8,2,8,'2025-12-10 07:25:48'),(9,2,4,'2025-12-10 07:25:48'),(10,3,9,'2025-12-10 07:26:08'),(11,3,10,'2025-12-10 07:26:08'),(12,3,3,'2025-12-10 07:26:08'),(13,3,7,'2025-12-10 07:26:08'),(14,3,4,'2025-12-10 07:26:08'),(15,3,8,'2025-12-10 07:26:08'),(16,4,5,'2025-12-10 07:26:45'),(17,4,6,'2025-12-10 07:26:45'),(18,4,11,'2025-12-10 07:26:45'),(19,4,4,'2025-12-10 07:26:45'),(20,4,8,'2025-12-10 07:26:45'),(21,4,12,'2025-12-10 07:26:45'),(22,5,1,'2025-12-10 07:27:15'),(23,5,13,'2025-12-10 07:27:15'),(24,5,14,'2025-12-10 07:27:15'),(25,5,4,'2025-12-10 07:27:15'),(26,5,7,'2025-12-10 07:27:15'),(27,5,8,'2025-12-10 07:27:15'),(28,5,15,'2025-12-10 07:27:15'),(29,6,1,'2025-12-10 07:27:31'),(30,6,13,'2025-12-10 07:27:31'),(31,6,16,'2025-12-10 07:27:31'),(32,6,4,'2025-12-10 07:27:31'),(33,6,8,'2025-12-10 07:27:31'),(34,6,17,'2025-12-10 07:27:31'),(35,6,18,'2025-12-10 07:27:31'),(36,7,13,'2025-12-10 07:27:49'),(37,7,19,'2025-12-10 07:27:49'),(38,7,20,'2025-12-10 07:27:49'),(39,7,4,'2025-12-10 07:27:49'),(40,7,21,'2025-12-10 07:27:49'),(41,7,3,'2025-12-10 07:27:49');
/*!40000 ALTER TABLE `problem_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippet`
--

DROP TABLE IF EXISTS `snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snippet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `problem_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `snippet_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`),
  CONSTRAINT `snippet_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippet`
--

LOCK TABLES `snippet` WRITE;
/*!40000 ALTER TABLE `snippet` DISABLE KEYS */;
INSERT INTO `snippet` VALUES (1,'class Solution:\n    def twoSum(self, nums, target):\n        pass','2025-12-10 07:25:27',1,1),(2,'class Solution {\n    public int[] twoSum(int[] nums, int target) {\n        return new int[]{};\n    }\n}','2025-12-10 07:25:27',1,2),(3,'class Solution {\npublic:\n    vector<int> twoSum(vector<int>& nums, int target) {\n        return {};\n    }\n};','2025-12-10 07:25:27',1,3),(4,'# Definition for singly-linked list.\n# class ListNode:\n#     def __init__(self, val=0, next=None):\n#         self.val = val\n#         self.next = next\nclass Solution:\n    def reverseList(self, head):\n        pass','2025-12-10 07:25:48',2,1),(5,'/**\n * Definition for singly-linked list.\n * public class ListNode {\n *     int val;\n *     ListNode next;\n *     ListNode() {}\n *     ListNode(int val) { this.val = val; }\n *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }\n * }\n */\nclass Solution {\n    public ListNode reverseList(ListNode head) {\n        return null;\n    }\n}','2025-12-10 07:25:48',2,2),(6,'/**\n * Definition for singly-linked list.\n * struct ListNode {\n *     int val;\n *     ListNode *next;\n *     ListNode() : val(0), next(nullptr) {}\n *     ListNode(int x) : val(x), next(nullptr) {}\n *     ListNode(int x, ListNode *next) : val(x), next(next) {}\n * };\n */\nclass Solution {\npublic:\n    ListNode* reverseList(ListNode* head) {\n        return nullptr;\n    }\n};','2025-12-10 07:25:48',2,3),(7,'class Solution:\n    def isValid(self, s):\n        pass','2025-12-10 07:26:08',3,1),(8,'class Solution {\n    public boolean isValid(String s) {\n        return false;\n    }\n}','2025-12-10 07:26:09',3,2),(9,'class Solution {\npublic:\n    bool isValid(string s) {\n        return false;\n    }\n};','2025-12-10 07:26:09',3,3),(10,'# Definition for singly-linked list.\n# class ListNode:\n#     def __init__(self, val=0, next=None):\n#         self.val = val\n#         self.next = next\nclass Solution:\n    def mergeTwoLists(self, list1, list2):\n        pass','2025-12-10 07:26:45',4,1),(11,'/**\n * Definition for singly-linked list.\n * public class ListNode {\n *     int val;\n *     ListNode next;\n *     ListNode() {}\n *     ListNode(int val) { this.val = val; }\n *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }\n * }\n */\nclass Solution {\n    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {\n        return null;\n    }\n}','2025-12-10 07:26:45',4,2),(12,'/**\n * Definition for singly-linked list.\n * struct ListNode {\n *     int val;\n *     ListNode *next;\n *     ListNode() : val(0), next(nullptr) {}\n *     ListNode(int x) : val(x), next(nullptr) {}\n *     ListNode(int x, ListNode *next) : val(x), next(next) {}\n * };\n */\nclass Solution {\npublic:\n    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {\n        return nullptr;\n    }\n};','2025-12-10 07:26:45',4,3),(13,'class Solution:\n    def maxProfit(self, prices):\n        pass','2025-12-10 07:27:15',5,1),(14,'class Solution {\n    public int maxProfit(int[] prices) {\n        return 0;\n    }\n}','2025-12-10 07:27:15',5,2),(15,'class Solution {\npublic:\n    int maxProfit(vector<int>& prices) {\n        return 0;\n    }\n};','2025-12-10 07:27:15',5,3),(16,'class Solution:\n    def maxSubArray(self, nums):\n        pass','2025-12-10 07:27:31',6,1),(17,'class Solution {\n    public int maxSubArray(int[] nums) {\n        return 0;\n    }\n}','2025-12-10 07:27:31',6,2),(18,'class Solution {\npublic:\n    int maxSubArray(vector<int>& nums) {\n        return 0;\n    }\n};','2025-12-10 07:27:31',6,3),(19,'class Solution:\n    def climbStairs(self, n):\n        pass','2025-12-10 07:27:49',7,1),(20,'class Solution {\n    public int climbStairs(int n) {\n        return 0;\n    }\n}','2025-12-10 07:27:49',7,2),(21,'class Solution {\npublic:\n    int climbStairs(int n) {\n        return 0;\n    }\n};','2025-12-10 07:27:49',7,3);
/*!40000 ALTER TABLE `snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solved_problem`
--

DROP TABLE IF EXISTS `solved_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solved_problem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `xp_earned` int DEFAULT NULL,
  `tookAIHelp` tinyint(1) DEFAULT NULL,
  `solvedAt` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_problem_user` (`problem_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `solved_problem_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `solved_problem_ibfk_2` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solved_problem`
--

LOCK TABLES `solved_problem` WRITE;
/*!40000 ALTER TABLE `solved_problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `solved_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `problem_id` (`problem_id`),
  CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_answer`
--

DROP TABLE IF EXISTS `submission_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` text,
  `totalExecTime` float NOT NULL,
  `totalExecMemory` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `mode` enum('Run','Submit') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `submission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `submission_id` (`submission_id`),
  CONSTRAINT `submission_answer_ibfk_1` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_answer`
--

LOCK TABLES `submission_answer` WRITE;
/*!40000 ALTER TABLE `submission_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` enum('Topic','Company') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Array','Topic','2025-12-10 07:25:27'),(2,'Hash Table','Topic','2025-12-10 07:25:27'),(3,'Google','Company','2025-12-10 07:25:27'),(4,'Amazon','Company','2025-12-10 07:25:27'),(5,'Linked List','Topic','2025-12-10 07:25:48'),(6,'Recursion','Topic','2025-12-10 07:25:48'),(7,'Facebook','Company','2025-12-10 07:25:48'),(8,'Microsoft','Company','2025-12-10 07:25:48'),(9,'Stack','Topic','2025-12-10 07:26:08'),(10,'String','Topic','2025-12-10 07:26:08'),(11,'Two Pointers','Topic','2025-12-10 07:26:45'),(12,'Apple','Company','2025-12-10 07:26:45'),(13,'Dynamic Programming','Topic','2025-12-10 07:27:15'),(14,'Greedy','Topic','2025-12-10 07:27:15'),(15,'Goldman Sachs','Company','2025-12-10 07:27:15'),(16,'Divide and Conquer','Topic','2025-12-10 07:27:31'),(17,'LinkedIn','Company','2025-12-10 07:27:31'),(18,'Bloomberg','Company','2025-12-10 07:27:31'),(19,'Math','Topic','2025-12-10 07:27:49'),(20,'Memoization','Topic','2025-12-10 07:27:49'),(21,'Adobe','Company','2025-12-10 07:27:49');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcase`
--

DROP TABLE IF EXISTS `testcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testcase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `input_data` text NOT NULL,
  `expected_output` text NOT NULL,
  `explanation` text,
  `isHidden` tinyint(1) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  CONSTRAINT `testcase_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcase`
--

LOCK TABLES `testcase` WRITE;
/*!40000 ALTER TABLE `testcase` DISABLE KEYS */;
INSERT INTO `testcase` VALUES (1,'[2,7,11,15]\n9','[0,1]','',0,1,'2025-12-10 07:25:27',1),(2,'[3,2,4]\n6','[1,2]','',0,2,'2025-12-10 07:25:27',1),(3,'[3,3]\n6','[0,1]','',0,3,'2025-12-10 07:25:27',1),(4,'[1,5,3,7,8,9]\n12','[2,4]','',1,4,'2025-12-10 07:25:27',1),(5,'[-1,-2,-3,-4,-5]\n-8','[2,4]','',1,5,'2025-12-10 07:25:27',1),(6,'[1,2,3,4,5]','[5,4,3,2,1]','The list is reversed: 5 becomes the head, followed by 4, 3, 2, and 1.',0,1,'2025-12-10 07:25:48',2),(7,'[1,2]','[2,1]','Simple two-node reversal.',0,2,'2025-12-10 07:25:48',2),(8,'[]','[]','Empty list remains empty.',0,3,'2025-12-10 07:25:48',2),(9,'[1]','[1]','Single node list remains unchanged.',1,4,'2025-12-10 07:25:48',2),(10,'[1,2,3,4,5,6,7,8,9,10]','[10,9,8,7,6,5,4,3,2,1]','Longer list reversal test.',1,5,'2025-12-10 07:25:48',2),(11,'\"()\"','true','Simple valid pair of parentheses.',0,1,'2025-12-10 07:26:09',3),(12,'\"()[]{}\"','true','Multiple types of brackets, all properly matched.',0,2,'2025-12-10 07:26:09',3),(13,'\"(]\"','false','Opening \'(\' is closed with \']\' which doesn\'t match.',0,3,'2025-12-10 07:26:09',3),(14,'\"([)]\"','false','Brackets are interleaved incorrectly - \'[\' should be closed before \')\'.',1,4,'2025-12-10 07:26:09',3),(15,'\"{[]}\"','true','Properly nested brackets.',1,5,'2025-12-10 07:26:09',3),(16,'\"((((\"','false','Opening brackets without any closing brackets.',1,6,'2025-12-10 07:26:09',3),(17,'[1,2,4]\n[1,3,4]','[1,1,2,3,4,4]','Both lists have common values and need proper interleaving.',0,1,'2025-12-10 07:26:45',4),(18,'[]\n[]','[]','Both lists are empty.',0,2,'2025-12-10 07:26:45',4),(19,'[]\n[0]','[0]','One list is empty, return the other.',0,3,'2025-12-10 07:26:45',4),(20,'[1,2,3]\n[4,5,6]','[1,2,3,4,5,6]','All elements of list1 come before all elements of list2.',1,4,'2025-12-10 07:26:45',4),(21,'[5]\n[1,2,4]','[1,2,4,5]','Single element list merged with multi-element list.',1,5,'2025-12-10 07:26:45',4),(22,'[-9,-7,-3,-3,0,0,0,1]\n[-10,-6,-4,-1]','[-10,-9,-7,-6,-4,-3,-3,-1,0,0,0,1]','Lists with negative numbers and duplicates.',1,6,'2025-12-10 07:26:45',4),(23,'[7,1,5,3,6,4]','5','Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.',0,1,'2025-12-10 07:27:15',5),(24,'[7,6,4,3,1]','0','Prices only decrease, so no profit can be made.',0,2,'2025-12-10 07:27:15',5),(25,'[2,4,1]','2','Buy on day 1 (price = 2) and sell on day 2 (price = 4), profit = 2.',0,3,'2025-12-10 07:27:15',5),(26,'[3,2,6,5,0,3]','4','Buy on day 2 (price = 2) and sell on day 3 (price = 6), profit = 4.',1,4,'2025-12-10 07:27:15',5),(27,'[1,2,3,4,5]','4','Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 4.',1,5,'2025-12-10 07:27:15',5),(28,'[2,1,2,0,1]','1','Multiple valid transactions, but max profit is 1 (buy at 0, sell at 1).',1,6,'2025-12-10 07:27:15',5),(29,'[-2,1,-3,4,-1,2,1,-5,4]','6','The subarray [4,-1,2,1] has the largest sum of 6.',0,1,'2025-12-10 07:27:31',6),(30,'[1]','1','Single element array, so the maximum sum is that element.',0,2,'2025-12-10 07:27:31',6),(31,'[5,4,-1,7,8]','23','The entire array is the maximum subarray with sum 23.',0,3,'2025-12-10 07:27:31',6),(32,'[-1]','-1','Single negative element, return it as the maximum.',1,4,'2025-12-10 07:27:31',6),(33,'[-2,-1,-3,-4]','-1','All negative numbers, pick the largest (least negative) one.',1,5,'2025-12-10 07:27:31',6),(34,'[1,2,-1,-2,2,1,-2,1,4,-5,4]','6','Complex array with mixed positive and negative values.',1,6,'2025-12-10 07:27:31',6),(35,'2','2','Two ways: [1,1] or [2]',0,1,'2025-12-10 07:27:49',7),(36,'3','3','Three ways: [1,1,1], [1,2], or [2,1]',0,2,'2025-12-10 07:27:49',7),(37,'1','1','Only one way: [1]',0,3,'2025-12-10 07:27:49',7),(38,'5','8','Eight different ways to climb 5 steps.',1,4,'2025-12-10 07:27:49',7),(39,'10','89','89 different ways to climb 10 steps (10th Fibonacci number).',1,5,'2025-12-10 07:27:49',7),(40,'20','10946','Testing larger input for efficiency.',1,6,'2025-12-10 07:27:49',7);
/*!40000 ALTER TABLE `testcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcase_result`
--

DROP TABLE IF EXISTS `testcase_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testcase_result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `execTime` float NOT NULL,
  `execMemory` float NOT NULL,
  `expected_output` text NOT NULL,
  `error_message` text,
  `created_at` datetime DEFAULT NULL,
  `problem_id` int NOT NULL,
  `submission_id` int NOT NULL,
  `testcase_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  KEY `submission_id` (`submission_id`),
  KEY `testcase_id` (`testcase_id`),
  CONSTRAINT `testcase_result_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`),
  CONSTRAINT `testcase_result_ibfk_2` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`id`),
  CONSTRAINT `testcase_result_ibfk_3` FOREIGN KEY (`testcase_id`) REFERENCES `testcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcase_result`
--

LOCK TABLES `testcase_result` WRITE;
/*!40000 ALTER TABLE `testcase_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `testcase_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `role` enum('Student','Admin') NOT NULL,
  `total_xp` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `college_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `college_id` (`college_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'abc@gmail.com','subhash','abc@gmail.com','$2b$12$ppEMddkQ3UOd.nMv4Hmqh.jK/qj5rdjhxDeauUJ7/gdx.uOpC8iXS','Student',0,'2025-12-10 07:29:00',1),(2,'def@gmail.com','ruthvika','def@gmail.com','$2b$12$FfQgtW/5sfmBsvflW1/8Vuwl9Pm/FH0MRUFy2GKhsxTSorhVcviYO','Student',0,'2025-12-10 07:33:07',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10 13:18:33
