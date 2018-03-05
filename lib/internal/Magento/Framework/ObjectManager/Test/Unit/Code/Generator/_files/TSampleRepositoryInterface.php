<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace Magento\Framework\ObjectManager\Code\Generator;

interface TSampleRepositoryInterface
{
    public function get(int $id) : \Magento\Framework\ObjectManager\Code\Generator\TSampleInterface;

    public function delete(\Magento\Framework\ObjectManager\Code\Generator\TSampleInterface $entity) : bool;

    public function save(\Magento\Framework\ObjectManager\Code\Generator\TSampleInterface $entity)
        : \Magento\Framework\ObjectManager\Code\Generator\TSampleInterface;
}