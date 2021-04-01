<?php

namespace App\Admin\Controllers;

use App\Models\Personne;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PersonneController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Personne';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    { $grid = new Grid(new Personne());

        $grid->column('id', __('Id'));
        $grid->column('parent.nom', __('Parent'));
        $grid->column('order', __('Order'));
        $grid->column('nom', __('Nom'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $personne=Personne::findOrFail($id);
        $show = new Show($personne);

        $show->field('id', __('Id'));
        if($personne->parent_id!= 0)
        {
            $show->field('parent_id', __('Parent id'));
            $show->field('parent.order', __('Parent Order'));
            $show->field('parent.nom', __('Parent Nom'));
        }
        $show->field('order', __('Order'));
        $show->field('nom', __('Nom'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Personne());

        $form->select('parent_id', __('Parent id'))->options(Personne::all()->pluck('nom','id'));
        $form->number('order', __('Order'));
        $form->text('nom', __('Nom'));

        return $form;
    }
}
