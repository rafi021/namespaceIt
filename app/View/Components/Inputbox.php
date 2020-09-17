<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Inputbox extends Component
{
    public $labelName, $placeholderName, $varName, $type, $dbvalue;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($type, $labelName, $placeholderName, $varName, $dbvalue)
    {
        $this->type = $type;
        $this->labelName = $labelName;
        $this->placeholderName = $placeholderName;
        $this->varName = $varName;
        $this->dbvalue = $dbvalue;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.inputbox');
    }
}
