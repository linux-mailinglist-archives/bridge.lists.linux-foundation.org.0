Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2F228AB86
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 03:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E886320452;
	Mon, 12 Oct 2020 01:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lwx92GKun+SG; Mon, 12 Oct 2020 01:49:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 85A20203FE;
	Mon, 12 Oct 2020 01:49:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C903C0051;
	Mon, 12 Oct 2020 01:49:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F413C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 33AFB867F0
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdhSss-Vnm6y for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 01:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D94686B42
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:49:22 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id l18so3686774pgg.0
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 18:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rIbb0/SViFEAq3N3skmCoQu+YzgDQ+YxSiq/Tk6Jyjs=;
 b=YatStj6JeisBAbir+YmU7Y5u3EZpGBGxbKaXAmw1CVHxTUc6NcIKpPqjbiRhurBwTi
 9+/cysSBOniaSGTCjhfXMLOFLQ1wQHQuw0bdIqd4Z92Hmkv4PL0lszVvOvrbEK8jdOkM
 sA5idgF+CcK58S1mlBzS4oJwDDX/f16/4ock0VZbnFal3wyWoA5qrRNDCgtEhlIsPcBD
 fksa9vLGqLi7PndXJtXuZSSbdTIf92YYTPLiTcG0/O/6uOE+/2R7TEDcX6qaOK7xBobz
 /I2Q4ZfZKhD18n2wf2Qb8rrn+HxwwIF7YwWylf6De1dZ0XhJo6DjT1h2S1IhR99CK/au
 cOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rIbb0/SViFEAq3N3skmCoQu+YzgDQ+YxSiq/Tk6Jyjs=;
 b=Zh2UtTOmyYY1mpANveAjpo+LPcMfjgYBV8AkiW8VRxF59K4kQNcv5vla1C64VQs0LE
 h+GjGUwvfhGa75RrrkAWnY1OXDwNPhhg2M0C6MyFRQPRl8WtIO52EK3eQJCIK4z1kNNb
 3slDZn05rmXDxDRfqaPl0E5od/7IY31nRgRdH0KaBE0HBKEZO8WXUCqSMdSnGwBCmoZ+
 2kf5tcLcJgKV6W4timwDOkCmZzSRyRS7ddqoPpt1hmcmZeCdCV7kmZDDiVF+j51DhYbS
 zkjflW2CJa2kOZAU7TBv0wHgs6kl9CLHQmqBiiDrWiCk4XNuZ7gNk7L0D3yRgPbFErrl
 2v0Q==
X-Gm-Message-State: AOAM532S+/awjH2OzyOW6ANDksVcCu7Rd7pjD4cOfnPbC2lu2mjE8tzc
 WuMnDNdNgVeblqS+2fc2KKj2ym8W3O+J3w==
X-Google-Smtp-Source: ABdhPJw4Pe7H9he+gRS6c+vGPBxNBkJ5eYwam9urDtnsK8QiQhWjspuehNW3K1oIiXedZsnV0pVyCw==
X-Received: by 2002:a62:5bc2:0:b029:13e:d13d:a130 with SMTP id
 p185-20020a625bc20000b029013ed13da130mr21501632pfb.24.1602467361220; 
 Sun, 11 Oct 2020 18:49:21 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 g3sm21133168pjl.6.2020.10.11.18.49.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 18:49:20 -0700 (PDT)
To: Heiner Kallweit <hkallweit1@gmail.com>, David Miller
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>, Oliver Neukum
 <oneukum@suse.com>, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Sergey Matyukevich <geomatsi@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Alexey Kuznetsov
 <kuznet@ms2.inr.ac.ru>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Johannes Berg <johannes@sipsolutions.net>, Pravin B Shelar
 <pshelar@ovn.org>, Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <4c7b9a8d-caa2-52dd-8973-10f4e2892dd6@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <44356f33-2191-c5a6-4c38-50c2934d16b0@gmail.com>
Date: Sun, 11 Oct 2020 18:49:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <4c7b9a8d-caa2-52dd-8973-10f4e2892dd6@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 08/12] net: dsa: use new function
 dev_fetch_sw_netstats
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



On 10/11/2020 12:41 PM, Heiner Kallweit wrote:
> Simplify the code by using new function dev_fetch_sw_netstats().
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
