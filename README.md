### Infrastructure as Code using Terraform modules by cloudguru.io

CloudGuru.io provides well-tested Terraform modules with elegant code to accomplish IaC (Infrastructure as Code) across all platforms, fast and easy.

### For more Terraform modules visit: [cloudguru.io](https://cloudguru.io/)

<br>

## [aws_iam_user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html)


This module can be used to create one or more IAM users. You can pass a list of user names to create as many users as needed from this single module. You can add these [IAM Users](https://github.com/VRYasa/AWS-Terraform-0.12/tree/master/iam/resources/aws_iam_user) to [IAM groups](https://github.com/VRYasa/AWS-Terraform-0.12/tree/master/iam/resources/aws_iam_group) using the [aws_iam_user_group_membership](https://github.com/VRYasa/AWS-Terraform-0.12/tree/master/iam/resources/aws_iam_user_group_membership) or the [aws_iam_group_membership](https://github.com/VRYasa/AWS-Terraform-0.12/tree/master/iam/resources/aws_iam_group_membership) modules.

<br>

## Arguments(Inputs)

The syntax code for Terraform can consist of one or more arguments specific to each resource. These arguments may be required or optional, details of which can be found in Terraform documentation. 

<table class="tg">
<thead>
  <tr>
    <th class="tg-lboi"></th>
    <th class="tg-lboi">Argument</th>
    <th class="tg-lboi">Description</th>
    <th class="tg-lboi">Type</th>
    <th class="tg-lboi">Example Value</th>
    <th class="tg-cly1">Default Value</th>
    <th class="tg-cly1">Source Link</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">Required <br>Arguments</td>
    <td class="tg-lboi">name</td>
    <td class="tg-lboi">A list of names to associate <br>with each of the IAM users.</td>
    <td class="tg-lboi"><mark>list</mark></td>
    <td class="tg-lboi">["iam_user_1", "iam_user_2", "iam_user_3"]</td>
    <td class="tg-cly1"> - </td>
    <td class="tg-cly1"><a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html" target="_blank" rel="noopener noreferrer">AWS IAM Users</a></td>
  </tr>
  <tr>
    <td class="tg-lboi" rowspan="4">Optional <br>Arguments</td>
    <td class="tg-lboi">path</td>
    <td class="tg-lboi">The list of paths in IAM where the <br>users shall be created.</td>
    <td class="tg-lboi"><mark>list</mark></td>
    <td class="tg-lboi">["/"]</td>
    <td class="tg-cly1"> - </td>
    <td class="tg-cly1"><a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html" target="_blank" rel="noopener noreferrer">AWS IAM Identifiers</a></td>
  </tr>
 <tr>
    <td class="tg-lboi">permissions_boundary</td>
    <td class="tg-lboi">The ARN of the IAM policy that shall serve as a permissions boundary for each of the IAM users.</td>
    <td class="tg-lboi"><mark>string</mark></td>
    <td class="tg-lboi">"arn:aws:iam::111111111111:policy/<br>common_permissions_boundary"</td>
    <td class="tg-cly1"> - </td>
    <td class="tg-cly1"><a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html" target="_blank" rel="noopener noreferrer">Permissions Boundaries for IAM Entities </a></td>
  </tr>
  <tr>
    <td class="tg-lboi">force_destroy</td>
    <td class="tg-lboi">Whether or not to destroy non-terraform managed user <br>resources like MFA devices while destroying the user.</td>
    <td class="tg-lboi"><mark>boolean</mark></td>
    <td class="tg-lboi">"false"</td>
    <td class="tg-cly1">"false"</td>
    <td class="tg-cly1"> - </td>
  </tr>
  <tr>
    <td class="tg-lboi">tags</td>
    <td class="tg-lboi">The tags that need to be added to <br>the user.</td>
    <td class="tg-lboi"><mark>map</mark></td>
    <td class="tg-lboi">tags = {<br>&nbsp;&nbsp;environment = "DEV"<br>&nbsp;&nbsp;app = "shared"<br>&nbsp;&nbsp;key3 = "value3"<br>}</td>
    <td class="tg-cly1"> - </td>
    <td class="tg-cly1"><a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html" target="_blank" rel="noopener noreferrer">AWS Tag Policies</a></td>
  </tr>
</tbody>
</table>

## Outputs

Outputs are very important. These values will be saved in your terraform.tfstate file. They can be pulled into other modules when required. Refer to this table for outputs of all the possible attributes of an IAM Users.

<br>

<table class="tg">
<thead>
  <tr>
    <th class="tg-lboi">Attribute</th>
    <th class="tg-cly1">Description</th>
    <th class="tg-cly1">Example Output</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lboi">iam_users_names</td>
    <td class="tg-cly1">This outputs a list of the names of the IAM users created.</td>
    <td class="tg-cly1">iam_users_names = [<br>&nbsp;&nbsp;"iam_user_1",<br>&nbsp;&nbsp;"iam_user_2",<br>&nbsp;&nbsp;"iam_user_3",<br>]</td>
  </tr>
  <tr>
    <td class="tg-cly1">iam_users_arns</td>
    <td class="tg-cly1">This outputs a list of the ARNs assigned to all the IAM users created.</td>
    <td class="tg-cly1">iam_users_arns = [<br>&nbsp;&nbsp;"arn:aws:iam::111111111111:user/iam_user_1",<br>&nbsp;&nbsp;"arn:aws:iam::111111111111:user/iam_user_2",<br>&nbsp;&nbsp;"arn:aws:iam::111111111111:user/iam_user_3",<br>]</td>
  </tr>
  <tr>
    <td class="tg-cly1">iam_users_unique_ids</td>
    <td class="tg-cly1">This outputs a list of the unique identification of all the IAM users created.</td>
    <td class="tg-cly1">iam_users_unique_ids = [<br>&nbsp;&nbsp;"AIDA2ZFMGV7V3L4SN6XWS",<br>&nbsp;&nbsp;"AIDA2ZFMGV7VRK2MHHHL7",<br>&nbsp;&nbsp;"AIDA2ZFMGV7V5TYUYTYN5",<br>]</td>
  </tr>
</tbody>
</table>

<br>

## Hard Dependencies

<br>

<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Module Name</th>
    <th class="tg-0lax">Description</th>
    <th class="tg-0lax">Source Link</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
  </tr>
</tbody>
</table>

<br>

## Soft Dependencies

Soft dependencies between our modules can be replaced by hard-coding their respective values.

<br>

<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Module Name</th>
    <th class="tg-0lax">Description</th>
    <th class="tg-0lax">Source Link</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">IAM Policy</td>
    <td class="tg-0lax">You can create IAM Policies with this module.</td>
    <td class="tg-0lax"><a href="https://github.com/VRYasa/AWS-Terraform-0.12/tree/master/iam/resources/aws_iam_policy" target="_blank" rel="noopener noreferrer">aws_iam_policy</a></td>
  </tr>
</tbody>
</table>

<br>

## Terraform Built-In Functions Used in this Module

<table class="tg">
<thead>
  <tr>
    <th class="tg-lboi">Function</th>
    <th class="tg-lboi">Source Link</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">count</td>
    <td class="tg-0pky"><a href="https://www.terraform.io/intro/examples/count.html" target="_blank" rel="noopener noreferrer">Learn More</a></td>
  </tr>
  <tr>
    <td class="tg-0pky">length</td>
    <td class="tg-0pky"><a href="https://www.terraform.io/docs/configuration/functions/length.html" target="_blank" rel="noopener noreferrer">Learn More</a></td>
  </tr>
  <tr>
    <td class="tg-0pky">element</td>
    <td class="tg-0pky"><a href="https://www.terraform.io/docs/configuration/functions/element.html" target="_blank" rel="noopener noreferrer">Learn More</a></td>
  </tr>
  <tr>
    <td class="tg-0pky">merge</td>
    <td class="tg-0pky"><a href="https://www.terraform.io/docs/configuration/functions/merge.html" target="_blank" rel="noopener noreferrer">Learn More</a></td>
  </tr>
</tbody>
</table>

<br>
<br>
<br>

### <b>Authors</b>
Suhayb M.<br>
Cloud DevOps Engineer

Janesh<br>
Cloud DevOps Engineer

### <b>Maintainers</b>
Suhayb M.<br>
Cloud DevOps Engineer

Vidh<br>
Cloud DevOps Architect
