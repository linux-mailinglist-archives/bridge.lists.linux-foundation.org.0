Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8F94C3398
	for <lists.bridge@lfdr.de>; Thu, 24 Feb 2022 18:27:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36A9783E36;
	Thu, 24 Feb 2022 17:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DSQKsG1p5Z8D; Thu, 24 Feb 2022 17:27:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D775483E35;
	Thu, 24 Feb 2022 17:27:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9EEA3C0036;
	Thu, 24 Feb 2022 17:27:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6372C0011
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 17:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A51F260D52
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 17:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pp9WFluo0r7f for <bridge@lists.linux-foundation.org>;
 Thu, 24 Feb 2022 17:27:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60E3060B37
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 17:27:21 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id b9so5099063lfv.7
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 09:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=8RGf8KCAQJHNAosPeJyYSXlvMYaIyXQSQxyPYx24e/w=;
 b=O9kj/5BfkMHLPyNzZggPZMcEllgF7boU/xWS+3IYd2iSn6L8RaPQ2dY0Txd0Izp/m9
 JU81TlQz21RM0gebie4vMoqbc+qcFCtrE143rAm1rNhopoj2FkINwGh49JwTO18Uam2f
 fTc5kdQzJULFnrkBjig0O4d3NpkujtX4PSiDc604XC581t2YxQFoGzHiiw3/aSBcWXwr
 dv9tu5aE4de/62/Kv+r85Ef3WcEIr8EIjg5LhJsqGVylofJ6547h4sJjTKcjYjkm5TRR
 3Qzz/YLOfaZ5O0M6Hr0w+zQx5p6h2WA+v8C8sKmqRvPsc10Kmg0dVw9BKAs2MJbPfcMa
 3tiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=8RGf8KCAQJHNAosPeJyYSXlvMYaIyXQSQxyPYx24e/w=;
 b=Vu5B6kg5pocgIIQF8doPnonm34+aHh7LvVtW6FZy4WrbPNEGnsQMlBYuUyDYyECAKh
 ECwciElJ0zJqQNzLeKIkBA0AP7iCBu4QSRU5mtA0RMA274XFOZDCpMbU2LZzTJl8H04c
 +8NIyTnf8tcLZQPxQIJg7ON/rcrs5SUGs5JlGz3AII+nsU7B3xFL+65hBDlet1BDjaP4
 IAN5EA0u6rQPN86fy2qWWNJs06lfMRdVtkFVy1TqRQdy2q6SdwuRHXbmZao4YbzJDJdQ
 VySWmN9sKIPbXZADf9CkrKisS7UPvthKfAmxqwkuEThLCpkeCbHbuccI1r6ycEYpamOG
 RQ7g==
X-Gm-Message-State: AOAM531soaXGoXJTJlYIWe4SnLIE8hg5BbM6OfC45iYMwitrN8+c1JhN
 wsiiCQ1/L4PXUovcallGNnk=
X-Google-Smtp-Source: ABdhPJxi0EDgD7FVpqCxykEIc6TjWq/KNHAqX7KNH4DXB+VOLRwpNHxQYabt/wS0O4Q+sd83zlgVhQ==
X-Received: by 2002:ac2:4d91:0:b0:443:127b:558a with SMTP id
 g17-20020ac24d91000000b00443127b558amr2521316lfe.542.1645723639168; 
 Thu, 24 Feb 2022 09:27:19 -0800 (PST)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 j2-20020a2e3c02000000b0024610e94b2fsm16961lja.130.2022.02.24.09.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 09:27:18 -0800 (PST)
From: Joachim Wiberg <troglobit@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20220224084806.4e85e6b5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20220223172407.175865-1-troglobit@gmail.com>
 <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
 <20220224080611.4e32bac3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <875yp4qlcg.fsf@gmail.com>
 <20220224084806.4e85e6b5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 24 Feb 2022 18:27:17 +0100
Message-ID: <8735k8qioa.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, "David S . Miller" <davem@davemloft.net>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH 1/1 net-next] net: bridge: add support for host
	l2 mdb entries
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

On Thu, Feb 24, 2022 at 08:48, Jakub Kicinski <kuba@kernel.org> wrote:
> On Thu, 24 Feb 2022 17:29:35 +0100 Joachim Wiberg wrote:
>> On Thu, Feb 24, 2022 at 08:06, Jakub Kicinski <kuba@kernel.org> wrote:
>> > On Thu, 24 Feb 2022 13:26:22 +0200 Nikolay Aleksandrov wrote:  
>> >> On 23/02/2022 19:24, Joachim Wiberg wrote:  
>>  [...]  
>> >> It would be nice to add a selftest for L2 entries. You can send it as a follow-up.  
>> > Let's wait for that, also checkpatch says you need to balance brackets
>> > to hold kernel coding style.  
>> Jakub, by "wait for that" do you mean you'd prefer I add the selftests
>> to this?
> Yes, add a selftest as a separate patch but in the same series.

OK, will do, thanks! :)

Regards
 /Joachim
 
