pragma solidity ^0.5.0;

contract TodoList{
	uint public taskCount = 0;

	//model the tasks using structs
	struct Task{
		uint id;
		string content;
		bool completed;
	}

	mapping(uint => Task) public tasks;

	event TaskCreated(uint id, string content, bool completed);

	constructor() public{
		createTask("check out Game theory documents");
	}
	

	function createTask(string memory _content) public {
		//increment task whenever it is called
		taskCount++;
		tasks[taskCount]= Task(taskCount, _content, false);
		emit TaskCreated(taskCount, _content, false);
	}


}