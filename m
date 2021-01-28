Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C76633092E1
	for <lists.bridge@lfdr.de>; Sat, 30 Jan 2021 10:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E47738464C;
	Sat, 30 Jan 2021 09:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OqkIrF2JWLZj; Sat, 30 Jan 2021 09:09:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7388D845DF;
	Sat, 30 Jan 2021 09:09:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5282DC013A;
	Sat, 30 Jan 2021 09:09:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28E59C0FA7
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 19:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C67086B5C
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 19:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vWitbyKrr628 for <bridge@lists.linux-foundation.org>;
 Thu, 28 Jan 2021 19:33:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate25.nvidia.com (hqnvemgate25.nvidia.com
 [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7339586B2F
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 19:33:25 +0000 (UTC)
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
 id <B601311850000>; Thu, 28 Jan 2021 11:33:25 -0800
Received: from [10.2.62.82] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 Jan
 2021 19:33:24 +0000
To: Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <nikolay@nvidia.com>
References: <20210126093533.441338-1-razor@blackwall.org>
 <20210127174226.4d29f454@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <046fad19-2f44-21d2-82b9-feb1fd62b068@nvidia.com>
 <20210128105201.7c6bed82@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Roopa Prabhu <roopa@nvidia.com>
Message-ID: <2935262d-b648-e692-8e85-cd3970c2d5e1@nvidia.com>
Date: Thu, 28 Jan 2021 11:33:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210128105201.7c6bed82@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1611862405; bh=FrNDICoxBbzrXdCz+4jMTw7QLJt3l6WlIzcvtkAvKrY=;
 h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
 MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 Content-Language:X-Originating-IP:X-ClientProxiedBy;
 b=ByIAo/IO3a8vr6GyBay8bS4XCmFvFSjZUE8GktaxZ6QeZigc/ZPwQnSGUxGAaK+Zy
 +kb8todrV/EJ4yc9Tq7Dqeerd/UirC9GVPvwPadsGTx7+rmuKCvvsresCNgunyWZNW
 sI4RXjLBjz3pgdlYmA8jWRyb36JnXz9BmWxGXe8qlUlFVjp4epIS7eAn027bubr+g9
 Sh3l3/LPPOy+usg9Fbn5aOH2btTJQCnmyNdFBmCO6HJQx7JP81XvetHpeEXh+Ii0/7
 erPfJuwklWRP0Ttsxc04ZAN0qC9tC7Dyi0Wj4DnqCNpi61h4NnDvPJ2ehtkqUXFckO
 xzbXH1QWnaJJg==
X-Mailman-Approved-At: Sat, 30 Jan 2021 09:09:25 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/2] net: bridge: multicast:
 per-port EHT hosts limit
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


On 1/28/21 10:52 AM, Jakub Kicinski wrote:
> On Thu, 28 Jan 2021 11:12:26 +0200 Nikolay Aleksandrov wrote:
>> On 28/01/2021 03:42, Jakub Kicinski wrote:
>>> On Tue, 26 Jan 2021 11:35:31 +0200 Nikolay Aleksandrov wrote:
>>>> From: Nikolay Aleksandrov <nikolay@nvidia.com>
>>>>
>>>> Hi,
>>>> This set adds a simple configurable per-port EHT tracked hosts limit.
>>>> Patch 01 adds a default limit of 512 tracked hosts per-port, since the EHT
>>>> changes are still only in net-next that shouldn't be a problem. Then
>>>> patch 02 adds the ability to configure and retrieve the hosts limit
>>>> and to retrieve the current number of tracked hosts per port.
>>>> Let's be on the safe side and limit the number of tracked hosts by
>>>> default while allowing the user to increase that limit if needed.
>>> Applied, thanks!
>>>
>>> I'm curious that you add those per-port sysfs files, is this a matter
>>> of policy for the bridge? Seems a bit like a waste of memory at this
>>> point.
>> Indeed, that's how historically new port and bridge options are added.
>> They're all exposed via sysfs. I wonder if we should just draw the line
>> and continue with netlink-only attributes. Perhaps we should add a comment
>> about it for anyone adding new ones.
>>
>> Since this is in net-next I can send a follow up to drop the sysfs part
>> and another to add that comment.
>>
>> WDYT?
> SGTM!

+1 :)


