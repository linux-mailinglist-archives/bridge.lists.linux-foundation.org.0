Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F48258B63
	for <lists.bridge@lfdr.de>; Tue,  1 Sep 2020 11:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 258AA86EB5;
	Tue,  1 Sep 2020 09:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YASQ3iDpKq9U; Tue,  1 Sep 2020 09:22:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6656286EB4;
	Tue,  1 Sep 2020 09:22:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A342C0051;
	Tue,  1 Sep 2020 09:22:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7DB70C0051
 for <bridge@lists.linux-foundation.org>; Tue,  1 Sep 2020 09:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 625E88701B
 for <bridge@lists.linux-foundation.org>; Tue,  1 Sep 2020 09:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XA4W3tQz+d6I for <bridge@lists.linux-foundation.org>;
 Tue,  1 Sep 2020 09:22:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4A2D986F6D
 for <bridge@lists.linux-foundation.org>; Tue,  1 Sep 2020 09:22:27 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w5so676947wrp.8
 for <bridge@lists.linux-foundation.org>; Tue, 01 Sep 2020 02:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JId0SkVazCDez5KK5g4ks/W/j+P2ORJmNcED9SIPLI8=;
 b=XXhM+dPf2aCaAvmFC8uGJg2kDixU79a0xCvcJZr5D6Xe/Lqc2tqiGOSrC5jGjkcgp3
 6dQ29E5h9/rgb031e7/jwaok86ClcvNb0Nah3RJaGwandOjfYY7t3EtZbFXP4xDZJpOT
 evpJeOcxK2Zf1NJp4xaRlNe8jw6W0vrTeZcW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JId0SkVazCDez5KK5g4ks/W/j+P2ORJmNcED9SIPLI8=;
 b=JY6q0HED7LXbfHarsHm/uDaY+uy8KgbIN/a6z/G03QbHueRr7LJe4UG7KNnDHeYrWm
 rK8TQgVliEkc6tz518jFRIJSiUeNQFV+o2fpzK/j+P40pBJCLKM0cxbGgpkawODjwpyQ
 X400CNt4Gw4kQUxD1fU+5CX+sUwln4oKfENodf27ChsGy8qWFwEgKUfsakYA/cfLJQoM
 ZBA2qN5tQySHefwm9MEad102wKbBFshzOPlCSXdgObPZ/tRs3USpwoADl1xrmybvm6As
 L1FfvVGJxlvilxvkJC+qv2jsHRrQr6iV0jggVweJXgDJimL5cnKEdt64/T85QWf0IrKu
 T95w==
X-Gm-Message-State: AOAM533na/YaHoEGs1AyG1fGZDQNJBFcKyhll0X2pYsHdI4ARWA7wPOe
 B1RaPzvGOe0N63o/lSxagt45eQ==
X-Google-Smtp-Source: ABdhPJyYrXPBMuUuxUPwYovheCFfJFXdqwWG/2qh6u65HvgIoov/h/3lZPTljKgnKBvTshLwoWUFnw==
X-Received: by 2002:adf:ef45:: with SMTP id c5mr807011wrp.37.1598952145695;
 Tue, 01 Sep 2020 02:22:25 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j7sm1462752wrs.11.2020.09.01.02.22.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Sep 2020 02:22:25 -0700 (PDT)
To: netdev@vger.kernel.org
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <d7b03d6d-90ca-5df1-13de-33f69d8c86a8@cumulusnetworks.com>
Date: Tue, 1 Sep 2020 12:22:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 00/15] net: bridge: mcast: initial
 IGMPv3 support (part 1)
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

On 31/08/2020 18:08, Nikolay Aleksandrov wrote:
> Hi all,
> This patch-set implements the control plane for initial IGMPv3 support.
[snip]

Self-NAK, my torture tests uncovered (a rather obvious) locking issue with the dump
code. The src groups will have to be traversed with RCU, and thus RCU-friendly
since the mdb dump code doesn't acquire multicast_lock and we don't want to block
IGMP processing.

I'll wait with v2 to see if there are any other comments.

Thanks,
 Nik


