Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B560D283640
	for <lists.bridge@lfdr.de>; Mon,  5 Oct 2020 15:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68BFA856CB;
	Mon,  5 Oct 2020 13:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x06fcZVSLUCB; Mon,  5 Oct 2020 13:07:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA4C3856E8;
	Mon,  5 Oct 2020 13:07:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD755C0051;
	Mon,  5 Oct 2020 13:07:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F14DCC0051
 for <bridge@lists.linux-foundation.org>; Mon,  5 Oct 2020 13:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E0535856BF
 for <bridge@lists.linux-foundation.org>; Mon,  5 Oct 2020 13:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HAxigHRhuCtb for <bridge@lists.linux-foundation.org>;
 Mon,  5 Oct 2020 13:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B7D2A85657
 for <bridge@lists.linux-foundation.org>; Mon,  5 Oct 2020 13:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1601903234; x=1633439234;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=f3Rk8sTIRBiskNiGl0kpAdCKd2pAma8USN5R7liXYu4=;
 b=mzY8iRKYywYXjMcQoV/4dgV1UUp6rSrS6ovR/yEmlAtk5tGeOseQduSq
 SEyJ5TdUX62+6G0yv7Ld5eCKrt/lhSwQJp8W6WCbMLT2Db9MmiuhaFu5M
 WEj2fo3akqm1/kY4TOWGyCVFam91hmIsEUVvxObqP7k3zjhfgDZmyQI5p
 aXXewmbDYU3NGt5sp9GhaBTpntnP0lA90YJ6mTjP+ctGoZ8mXPdrPAH2Y
 8CMK8Yq2LtLiAQltTgSuCr9IGDK3puQB9XEAEbRys4bmNi2gsSFXtwaOB
 bQHyCgX5cu4cW9X7kt65YoE7egh/+7WyItj9HdI+0L0Ac66LkLskKWAnN A==;
IronPort-SDR: hhPTvVM0iAl3d0+AfH3apqIocAbWVfEt9mADUmRBK8hytTT2Gosvsz5ZS17y0OL5MRRjEpOFbv
 MJNLy/RSiVVpKVTscaufeEBV9KbTorOXZj2Gz7eCvm5fmXwdnIsX7F0aGlJ6lRGPZXwWQ+oHeO
 4huPh1kxohxnOIBiZuE+BCdme2ssaBMV4OO9tLT/aFIinggVl5YWZRvfair+EkqKiM758/YCU8
 7K+G4CSW0DkT+TJWCWOQGkAiIM1c3f7dyVkXqEZp0tWeR1bgGrZxRV1fMjgqpsPQAE9z0Wg4P4
 htQ=
X-IronPort-AV: E=Sophos;i="5.77,338,1596524400"; d="scan'208";a="94230142"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Oct 2020 06:07:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 5 Oct 2020 06:07:13 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 5 Oct 2020 06:07:10 -0700
Date: Mon, 5 Oct 2020 15:07:12 +0200
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20201005130712.ybbgiddb7bnbkz6h@ws.localdomain>
References: <20201001103019.1342470-1-henrik.bjoernlund@microchip.com>
 <20201001103019.1342470-11-henrik.bjoernlund@microchip.com>
 <20201001124929.GM8264@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20201001124929.GM8264@nanopsycho>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 jiri@mellanox.com, linux-kernel@vger.kernel.org, idosch@mellanox.com,
 Henrik Bjoernlund <henrik.bjoernlund@microchip.com>, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, UNGLinuxDriver@microchip.com, Horatiu
 Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [net-next v2 10/11] bridge: switchdev: cfm: switchdev
 interface implementation
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
From: "Allan W. Nielsen via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi Jiri

On 01.10.2020 14:49, Jiri Pirko wrote:
>EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
>Thu, Oct 01, 2020 at 12:30:18PM CEST, henrik.bjoernlund@microchip.com wrote:
>>This is the definition of the CFM switchdev interface.
>>
>>The interface consist of these objects:
>>    SWITCHDEV_OBJ_ID_MEP_CFM,
>>    SWITCHDEV_OBJ_ID_MEP_CONFIG_CFM,
>>    SWITCHDEV_OBJ_ID_CC_CONFIG_CFM,
>>    SWITCHDEV_OBJ_ID_CC_PEER_MEP_CFM,
>>    SWITCHDEV_OBJ_ID_CC_CCM_TX_CFM,
>>    SWITCHDEV_OBJ_ID_MEP_STATUS_CFM,
>>    SWITCHDEV_OBJ_ID_PEER_MEP_STATUS_CFM
>>
>>MEP instance add/del
>>    switchdev_port_obj_add(SWITCHDEV_OBJ_ID_MEP_CFM)
>>    switchdev_port_obj_del(SWITCHDEV_OBJ_ID_MEP_CFM)
>>
>>MEP cofigure
>>    switchdev_port_obj_add(SWITCHDEV_OBJ_ID_MEP_CONFIG_CFM)
>>
>>MEP CC cofigure
>>    switchdev_port_obj_add(SWITCHDEV_OBJ_ID_CC_CONFIG_CFM)
>>
>>Peer MEP add/del
>>    switchdev_port_obj_add(SWITCHDEV_OBJ_ID_CC_PEER_MEP_CFM)
>>    switchdev_port_obj_del(SWITCHDEV_OBJ_ID_CC_PEER_MEP_CFM)
>>
>>Start/stop CCM transmission
>>    switchdev_port_obj_add(SWITCHDEV_OBJ_ID_CC_CCM_TX_CFM)
>>
>>Get MEP status
>>       switchdev_port_obj_get(SWITCHDEV_OBJ_ID_MEP_STATUS_CFM)
>>
>>Get Peer MEP status
>>       switchdev_port_obj_get(SWITCHDEV_OBJ_ID_PEER_MEP_STATUS_CFM)
>>
>>Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
>>Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
>
>You have to submit the driver parts as a part of this patchset.
>Otherwise it is no good.
Fair enough.

With MRP we did it like this, and after Nik asked for details on what is
being offload, we thought that adding this would help.

The reason why we did not include the implementation of this interface
is that it is for a new SoC which is still not fully available which is
why we have not done the basic SwitchDev driver for it yet. But the
basic functionality clearly needs to come first.

Our preference is to continue fixing the comments we got on the pure SW
implementation and then get back to the SwitchDev offloading.

This will mean dropping the last 2 patches in the serie.

Does that work for you Jiri, and Nik?

/Allan

